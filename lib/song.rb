require "pry"

class Song

    @@all = []
    @@count = 0
    @@artists= []
    @@genres=[]
    

    attr_accessor  :name, :artist, :genre
    
    def initialize (name, artist, genre)
        @name = name 
        @artist = artist
        @@artists << self.artist
        @genre = genre
        @@genres << self.genre
        @@all << self
        @@count += 1
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally

    end

end 


