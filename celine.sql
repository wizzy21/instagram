/*Trouver tous les url des photos ainsi que tous les commentaire qui ont été posté par l'auteur de la photo A l'exercice précedent afficher aussi le nom de l'utilisateur qui a commenté ses propres photos */
SELECT photos.url, comments.contents FROM users JOIN photos ON users.id = photos.user_id JOIN comments ON users.id = comments.user_id; 

-- A l'exercice précedent afficher aussi le nom de l'utilisateur qui a commenté ses propres photos
-- retounre 398 lignes
 SELECT users.username,photos.id, photos.url, comments.contents FROM users JOIN photos ON users.id = photos.user_id JOIN comments ON users.id = comments.user_id;

 -- retourne 100 lignes
 SELECT DISTINCT photos.user_id, comments.id AS commentid, users.id, users.username, comments.contents 
    FROM comments 
    JOIN users ON comments.user_id = users.id 
    JOIN photos ON photos.user_id = users.id ;
 
 -- 21 lignes
  SELECT comments.id, comments.contents, photos.id, photos.url, users.id, users.username FROM comments JOIN photos ON comments.id = comments.photo_id JOIN users On comments.id = comments.user_id;
  --ORDER BY photos.id ASC;
  --ORDER BY users.id ASC;