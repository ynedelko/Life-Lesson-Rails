class SectionsController <ApplicationController
  def index
    @sections = Section.all
  end

  def show
    @section = Section.find(params[:id])
  end

  def new
    @section = Section.new
  end

  def create
    @section = Section.new(section_params)
    if @section.save
      redirect_to sections_path
    else
      render :new
    end
  end

  private
  def section_params
    params.require(:section).permit(:title)
  end
end
