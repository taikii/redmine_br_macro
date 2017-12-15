Redmine::Plugin.register :redmine_br_macro do

  name 'Redmine BR Macro plugin'
  author 'Taiki IKEGAME'
  description 'This macro generates <br />.'
  version '1.0.0'
  url 'https://github.com/taikii/redmine_br_macro'
  author_url 'https://taikii.github.io'

  Redmine::WikiFormatting::Macros.register do
    desc "Generate <br />. Example:\n\n" +
         "{{br}}\n" +
         "{{br(2)}}"
    macro :br do |obj, args|
      out = ''.html_safe
      if args.length == 0 || args[0].to_i == 0
        out << tag(:br)
      else
        args[0].to_i.times do
          out << tag(:br)
        end
        out
      end
    end
  end
end
