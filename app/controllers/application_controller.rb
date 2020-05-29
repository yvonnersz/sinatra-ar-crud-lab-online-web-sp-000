require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

<<<<<<< HEAD
  get '/' do
    redirect to '/articles'
  end

  get '/articles' do
    @articles = Article.all
    erb :index
  end

  get '/articles/new' do
    erb :new
  end

  get '/articles/:id' do
    @article = Article.find_by(id:params[:id])
    erb :show
  end

  post '/articles' do
    @article = Article.create(title: params[:title], content: params[:content])
    redirect to "/articles/#{@article.id}"
  end

  get '/articles/:id/edit' do
    @article = Article.find_by(id: params[:id])
    erb :edit
  end

  patch '/articles/:id' do
    @article = Article.find_by(id: params[:id])
    @article.update(title: params[:title], content: params[:content])
    redirect to "/articles/#{@article.id}"
  end

  delete '/articles/:id' do
    Article.delete(params[:id])
    redirect to "/articles"
  end


end
=======

    get '/' do
      redirect to '/articles'
    end

    get '/articles' do
      @articles = Article.all
      erb :index
    end

    get '/articles/new' do
      @article = Article.new
      erb :new
    end

    post '/articles' do
      @article = Article.create(title: params[:title], content: params[:content])
      redirect to "/articles/#{@article.id}"
    end

    get '/articles/:id' do
      @article = Article.find(params[:id])
      erb :show
    end

    get '/articles/:id/edit' do
      @article = Article.find(params[:id])
      erb :edit
    end


    patch "/articles/:id" do
      @article = Article.find(params[:id])
      # @article.update(title: params[:title], content: params[:content])
      @article.update(params[:article])
      redirect to "/articles/[:id]"
    end


    delete '/articles/:id' do
      Article.delete(params[:id])
      redirect to "/articles"
    end
  end
>>>>>>> 2e8ac4cc0906e3806e1591cb4fb2d38bf6a1751b
