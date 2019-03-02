class Api::MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render 'index.json.jbuilder'
  end

  def show 
    the_id = params[:id]
    @movie = Movie.find_by(id: the_id)
    render 'show.json.jbuilder'
  end

  def create
    @movie = Movie.new(
      title: params[:input_title],
      runtime: params[:input_runtime]
      )
    @movie.save
    render 'show.json.jbuilder'
  end

  def update
    #find the movie
    the_id = params[:id]
    @movie = Movie.find_by(id: the_id)
    #update the movie
    @movie.update(
      title: params[:input_title],
      runtime: params[:input_runtime]
      )
    render 'show.json.jbuilder'

    def destroy
      #find it
      the_id = params[:id]
      @movie = Movie.find_by(id: the_id)
      #destroy it
      @movie.destroy
      render 'show.json.jbuilder'

    end
  end
end
