def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, year
FROM books
INNER JOIN series
	ON books.series_id = series.id
GROUP BY books.title
HAVING series.id = 1
ORDER BY year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto
FROM characters
ORDER BY motto
LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) as total
FROM characters
GROUP BY species
ORDER BY total DESC
LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
FROM authors
INNER JOIN series
	ON authors.id = series.author_id
INNER JOIN subgenres
	ON series.subgenre_id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title
FROM series
INNER JOIN characters
	ON series.id = characters.series_id
WHERE characters.species = 'human'
GROUP BY series.title
ORDER BY COUNT(species) DESC LIMIT 1;
"
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
end
