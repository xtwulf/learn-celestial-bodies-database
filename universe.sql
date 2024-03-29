--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_mio_years integer,
    distance_from_earth integer,
    gravi numeric,
    description text,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    age_mio_years integer,
    distance_from_earth integer,
    gravi numeric,
    description text,
    has_life boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    age_mio_years integer,
    distance_from_earth integer,
    gravi numeric,
    description text,
    has_life boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    age_mio_years integer,
    distance_from_earth integer,
    gravi numeric,
    description text,
    has_life boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: test; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.test (
    test_id integer NOT NULL,
    name character varying(30),
    planet_id integer NOT NULL,
    age_mio_years integer,
    distance_from_earth integer,
    gravi numeric,
    description text,
    has_life boolean
);


ALTER TABLE public.test OWNER TO freecodecamp;

--
-- Name: test_test_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.test_test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_test_id_seq OWNER TO freecodecamp;

--
-- Name: test_test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.test_test_id_seq OWNED BY public.test.test_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: test test_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test ALTER COLUMN test_id SET DEFAULT nextval('public.test_test_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13000, 25000, 9.81, 'The Milky Way is the galaxy that contains our Solar System.', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 13000, 2537000, 9.8, 'The Andromeda Galaxy, also known as Messier 31, M31, or NGC 224, is a barred spiral galaxy approximately 2.537 million light-years from Earth.', false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 13000, 3040000, 9.7, 'The Triangulum Galaxy is a spiral galaxy approximately 3 million light-years from Earth in the constellation Triangulum.', false);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 65000, 54000000, 9.9, 'Messier 87 is a supergiant elliptical galaxy in the constellation Virgo.', false);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 13000, 23000000, 9.75, 'The Whirlpool Galaxy, also known as Messier 51a, M51a, and NGC 5194, is an interacting grand-design spiral galaxy with a Seyfert 2 active galactic nucleus.', false);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 13000, 29000000, 9.7, 'The Sombrero Galaxy, also known as M104 or NGC 4594, is a spiral galaxy in the constellation Virgo.', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Luna', 4500, 384400, 1.62, 'Luna, commonly known as the Moon, is Earth''s only natural satellite.', false, 3);
INSERT INTO public.moon VALUES (22, 'Phobos', 4500, 9376, 0.0057, 'Phobos is the innermost and larger of the two natural satellites of Mars.', false, 4);
INSERT INTO public.moon VALUES (23, 'Deimos', 4500, 23460, 0.003, 'Deimos is the smaller and outermost of the two natural satellites of Mars.', false, 4);
INSERT INTO public.moon VALUES (24, 'Ganymede', 4500, 1070400, 1.428, 'Ganymede is the largest moon of Jupiter and the Solar System.', false, 5);
INSERT INTO public.moon VALUES (25, 'Callisto', 4500, 1882700, 1.235, 'Callisto is the second-largest moon of Jupiter.', false, 5);
INSERT INTO public.moon VALUES (26, 'Io', 4500, 421800, 1.796, 'Io is the innermost and third-largest of the four Galilean moons of Jupiter.', false, 5);
INSERT INTO public.moon VALUES (27, 'Europa', 4500, 671100, 1.312, 'Europa is the smallest of the four Galilean moons of Jupiter.', false, 5);
INSERT INTO public.moon VALUES (28, 'Titan', 4500, 1257060, 1.352, 'Titan is the largest moon of Saturn and the second-largest natural satellite in the Solar System.', false, 6);
INSERT INTO public.moon VALUES (29, 'Rhea', 4500, 527040, 0.264, 'Rhea is the second-largest moon of Saturn and the ninth-largest moon in the Solar System.', false, 6);
INSERT INTO public.moon VALUES (30, 'Iapetus', 4500, 3560880, 0.223, 'Iapetus is the third-largest natural satellite of Saturn.', false, 6);
INSERT INTO public.moon VALUES (31, 'Miranda', 4500, 129900, 0.079, 'Miranda is the smallest and innermost of Uranus''s five round satellites.', false, 7);
INSERT INTO public.moon VALUES (32, 'Titania', 4500, 436800, 0.038, 'Titania is the largest of the moons of Uranus.', false, 7);
INSERT INTO public.moon VALUES (33, 'Triton', 4500, 354800, 0.779, 'Triton is the largest natural satellite of Neptune.', false, 8);
INSERT INTO public.moon VALUES (34, 'Nereid', 4500, 5512819, 0.003, 'Nereid is the third-largest moon of Neptune.', false, 8);
INSERT INTO public.moon VALUES (35, 'Charon', 4500, 19591, 0.278, 'Charon is the largest moon of the dwarf planet Pluto.', false, 9);
INSERT INTO public.moon VALUES (36, 'Kepler-1625b I', 1000, 6000, 0.1, 'Kepler-1625b I is an exomoon candidate orbiting the exoplanet Kepler-1625b.', false, 10);
INSERT INTO public.moon VALUES (37, 'HD 28185 b I', 500, 240, 0.02, 'HD 28185 b I is an exomoon candidate orbiting the exoplanet HD 28185 b.', false, 11);
INSERT INTO public.moon VALUES (38, 'Gliese 876 b I', 700, 20, 0.01, 'Gliese 876 b I is an exomoon candidate orbiting the exoplanet Gliese 876 b.', false, 12);
INSERT INTO public.moon VALUES (39, 'PSR B1620-26 b I', 8000, 38000, 0.03, 'PSR B1620-26 b I is an exomoon candidate orbiting the exoplanet PSR B1620-26 b.', false, 12);
INSERT INTO public.moon VALUES (40, 'PSR B1257+12 A I', 3000, 9800, 0.04, 'PSR B1257+12 A I is an exomoon candidate orbiting the exoplanet PSR B1257+12 A.', false, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4500, 77, 3.7, 'Mercury is the smallest planet in the Solar System and the closest to the Sun.', false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 4500, 261, 8.87, 'Venus is the second planet from the Sun, and is often called Earth''s twin because of its similar size and mass.', false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 4500, 0, 9.81, 'Earth is the third planet from the Sun and the only astronomical object known to harbor life.', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 4500, 55, 3.71, 'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, after Mercury.', false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 4500, 588, 24.79, 'Jupiter is the fifth planet from the Sun and the largest in the Solar System.', false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 4500, 1200, 10.44, 'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter.', false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 4500, 2600, 8.69, 'Uranus is the seventh planet from the Sun.', false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 4500, 4300, 11.15, 'Neptune is the eighth and farthest known Solar planet from the Sun.', false, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 4500, 5900, 0.62, 'Pluto is a dwarf planet in the Kuiper belt.', false, 1);
INSERT INTO public.planet VALUES (10, 'Kepler-186f', 500, 490, 0.4, 'Kepler-186f is an exoplanet orbiting the red dwarf Kepler-186, about 582 light-years from the Earth in the constellation Cygnus.', true, 2);
INSERT INTO public.planet VALUES (11, 'HD 189733b', 650, 63, 2.19, 'HD 189733b is an extrasolar planet approximately 63 light-years away from the Solar System.', false, 3);
INSERT INTO public.planet VALUES (12, 'Gliese 581g', 1000, 20, 0.68, 'Gliese 581g is an extrasolar planet orbiting the red dwarf star Gliese 581.', false, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4500, 0, 274, 'The Sun is the star at the center of the Solar System.', false, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 6000, 4, 1.1, 'Alpha Centauri A is the primary component of the Alpha Centauri star system.', false, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri B', 6000, 4, 0.907, 'Alpha Centauri B is a member of the Alpha Centauri star system.', false, 1);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 6000, 4, 0.15, 'Proxima Centauri is a small, low-mass star located in the constellation of Centaurus.', false, 1);
INSERT INTO public.star VALUES (5, 'Sirius', 250, 9, 2.02, 'Sirius is a binary star system and the brightest star in the Earth''s night sky.', false, 1);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 10000000, 643, 2.9, 'Betelgeuse is one of the largest stars known and is nearing the end of its life cycle.', false, 1);


--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.test VALUES (1, 'Test Entry 1', 1, 1000, 10000, 9.8, 'This is a test entry for the first planet.', true);
INSERT INTO public.test VALUES (2, 'Test Entry 2', 2, 2000, 20000, 9.5, 'This is a test entry for the second planet.', false);
INSERT INTO public.test VALUES (3, 'Test Entry 3', 3, 3000, 30000, 9.0, 'This is a test entry for the third planet.', true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: test_test_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.test_test_id_seq', 3, true);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: test test_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_id UNIQUE (test_id);


--
-- Name: test test_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (test_id);


--
-- Name: star galaxy_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

