class MailPreview < MailView
  def application_confirmation_email
    questionnaire = Questionnaire.first
    Mailer.application_confirmation_email(questionnaire)
  end

  def bulk_message_email
    message = Message.first
    Mailer.bulk_message_email(message, User.first)
  end
end if defined?(MailView)
