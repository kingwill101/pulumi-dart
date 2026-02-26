// ignore_for_file: unused_element, unnecessary_cast

class UserPoolVerificationMessageTemplate {
  /// Default email option. Must be either `CONFIRM_WITH_CODE` or `CONFIRM_WITH_LINK`. Defaults to `CONFIRM_WITH_CODE`.
  final String? defaultEmailOption;

  /// Email message template. Must contain the `{####}` placeholder. Conflicts with <span pulumi-lang-nodejs="`emailVerificationMessage`" pulumi-lang-dotnet="`EmailVerificationMessage`" pulumi-lang-go="`emailVerificationMessage`" pulumi-lang-python="`email_verification_message`" pulumi-lang-yaml="`emailVerificationMessage`" pulumi-lang-java="`emailVerificationMessage`">`email_verification_message`</span> argument.
  final String? emailMessage;

  /// Email message template for sending a confirmation link to the user, it must contain the `{##Click Here##}` placeholder.
  final String? emailMessageByLink;

  /// Subject line for the email message template. Conflicts with <span pulumi-lang-nodejs="`emailVerificationSubject`" pulumi-lang-dotnet="`EmailVerificationSubject`" pulumi-lang-go="`emailVerificationSubject`" pulumi-lang-python="`email_verification_subject`" pulumi-lang-yaml="`emailVerificationSubject`" pulumi-lang-java="`emailVerificationSubject`">`email_verification_subject`</span> argument.
  final String? emailSubject;

  /// Subject line for the email message template for sending a confirmation link to the user.
  final String? emailSubjectByLink;

  /// SMS message template. Must contain the `{####}` placeholder. Conflicts with <span pulumi-lang-nodejs="`smsVerificationMessage`" pulumi-lang-dotnet="`SmsVerificationMessage`" pulumi-lang-go="`smsVerificationMessage`" pulumi-lang-python="`sms_verification_message`" pulumi-lang-yaml="`smsVerificationMessage`" pulumi-lang-java="`smsVerificationMessage`">`sms_verification_message`</span> argument.
  final String? smsMessage;

  UserPoolVerificationMessageTemplate({
    this.defaultEmailOption,
    this.emailMessage,
    this.emailMessageByLink,
    this.emailSubject,
    this.emailSubjectByLink,
    this.smsMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultEmailOptionValue = defaultEmailOption;
    if (defaultEmailOptionValue != null) {
      map['defaultEmailOption'] = defaultEmailOptionValue;
    }
    final emailMessageValue = emailMessage;
    if (emailMessageValue != null) {
      map['emailMessage'] = emailMessageValue;
    }
    final emailMessageByLinkValue = emailMessageByLink;
    if (emailMessageByLinkValue != null) {
      map['emailMessageByLink'] = emailMessageByLinkValue;
    }
    final emailSubjectValue = emailSubject;
    if (emailSubjectValue != null) {
      map['emailSubject'] = emailSubjectValue;
    }
    final emailSubjectByLinkValue = emailSubjectByLink;
    if (emailSubjectByLinkValue != null) {
      map['emailSubjectByLink'] = emailSubjectByLinkValue;
    }
    final smsMessageValue = smsMessage;
    if (smsMessageValue != null) {
      map['smsMessage'] = smsMessageValue;
    }
    return map;
  }

  factory UserPoolVerificationMessageTemplate.fromMap(
      Map<String, dynamic> map) {
    return UserPoolVerificationMessageTemplate(
      defaultEmailOption: map['defaultEmailOption'] == null
          ? null
          : map['defaultEmailOption'] as String,
      emailMessage:
          map['emailMessage'] == null ? null : map['emailMessage'] as String,
      emailMessageByLink: map['emailMessageByLink'] == null
          ? null
          : map['emailMessageByLink'] as String,
      emailSubject:
          map['emailSubject'] == null ? null : map['emailSubject'] as String,
      emailSubjectByLink: map['emailSubjectByLink'] == null
          ? null
          : map['emailSubjectByLink'] as String,
      smsMessage:
          map['smsMessage'] == null ? null : map['smsMessage'] as String,
    );
  }
}
