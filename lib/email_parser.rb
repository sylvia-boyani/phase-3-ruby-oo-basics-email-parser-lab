# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  def initialize(email)
    @email = email
    @email
  end

  def parse
   pp @email.split(" ").grep(/[\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z]/i)
    parsed_emails = @email.split(" ").map do |email|
       email.split('').filter { |letter|
        letter != ","
       }.join
    end
    
    parsed_emails.uniq
  end
end
