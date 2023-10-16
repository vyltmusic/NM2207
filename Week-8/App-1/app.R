library(shiny)
# Define UI ----
ui <- fluidPage(
  titlePanel("My Shiny App"),
  sidebarLayout(
    sidebarPanel(),
    mainPanel(
      p("p creates a paragraph of text."),
      p("A new p() command starts a new paragraph. Supply a style attribute to change the format of an entire paragraph.", style = "font:montserrif"),
      strong("strong() makes bold text."),
      em("em() creates italicized (i.e, emphasized) text."),
      br(),
      code("code displays your text similar to computer code"),
      div("div creates segments of text with a similar style. This division of text is all blue because I passed the argument 'style = color:blue' to div", style = "color:blue"),
      br(),
      p("span does the same thing as div, but it works with",
          span("groups of words", style = "color:blue"),
          "that appear inside a paragraph."),
      img(src = "https://d33wubrfki0l68.cloudfront.net/1ac3f0e3753f18c7e2a8893957d1841fba1e3d08/48a33/wp-content/uploads/2018/10/rstudio-logo-flat.png", height = 140, width = 400)
      )
    )
  )
  
# Define server logic ----
server <- function(input, output) {
}
# Run the app ----
shinyApp(ui = ui, server = server)