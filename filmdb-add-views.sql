-- List all roles and movies that each actor has starred in.
CREATE VIEW actors_in_movies AS 
SELECT
  person.fname,
  person.lname,
  movie.title
FROM person
JOIN actorship
  ON person.person_id = actorship.actor_id
JOIN movie
  ON movie.movie_id = actorship.movie_id;

-- List all movies that person that a each person has directed
CREATE VIEW directors_movies AS
SELECT person.fname, person.lname, movie.title FROM person
INNER JOIN movie 
ON movie.director_id = person.person_id;