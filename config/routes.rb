Rails.application.routes.draw do
  resources :events
  resources :events
  resources :events

  root to: 'welcome#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/logout' => 'sessions#destroy', as: :logout
end
