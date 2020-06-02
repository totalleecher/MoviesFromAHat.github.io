module MovieList exposing (movies)

import Movie exposing (Movie, WatchState(..))
import Genre
import Time.Date exposing (date)


movies : List Movie
movies =
    [ { title = "Spring"
      , url = "http://www.imdb.com/title/tt3395184"
      , img = "spring.jpg"
      , year = 2014
      , runtime = 109
      , genres = [ "comedy", "horror", "romance" ]
      , watched = Watched (date 2017 10 5)
      , nsfw = True
      }
    , { title = "Cool Hand Luke"
      , url = "http://www.imdb.com/title/tt0061512"
      , img = "cool-hand-luke.jpg"
      , year = 1967
      , runtime = 126
      , genres = [ "crime", "drama" ]
      , watched = Unwatched
      , nsfw = False
      }
    ]
        |> List.map (\m -> { m | genres = Genre.fromFlatList m.genres })
