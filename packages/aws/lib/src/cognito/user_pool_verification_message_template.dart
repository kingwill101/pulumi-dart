// ignore_for_file: unused_element, unnecessary_cast

class UserPoolVerificationMessageTemplate {
  /// Default email option. Must be either `CONFIRM_WITH_CODE` or `CONFIRM_WITH_LINK`. Defaults to `CONFIRM_WITH_CODE`.
  final String? defaultEmailOption;

  /// Email message template. Must contain the `{####}` placeholder. Conflicts with `email_verification_message` argument.
  final String? emailMessage;

  /// Email message template for sending a confirmation link to the user, it must contain the `{##Click Here##}` placeholder.
  final String? emailMessageByLink;

  /// Subject line for the email message template. Conflicts with `email_verification_subject` argument.
  final String? emailSubject;

  /// Subject line for the email message template for sending a confirmation link to the user.
  final String? emailSubjectByLink;

  /// SMS message template. Must contain the `{####}` placeholder. Conflicts with `sms_verification_message` argument.
  final String? smsMessage;

  /// Creates a new [UserPoolVerificationMessageTemplate].
  /// [defaultEmailOption] Default email option. Must be either `CONFIRM_WITH_CODE` or `CONFIRM_WITH_LINK`. Defaults to `CONFIRM_WITH_CODE`.
  /// [emailMessage] Email message template. Must contain the `{####}` placeholder. Conflicts with `email_verification_message` argument.
  /// [emailMessageByLink] Email message template for sending a confirmation link to the user, it must contain the `{##Click Here##}` placeholder.
  /// [emailSubject] Subject line for the email message template. Conflicts with `email_verification_subject` argument.
  /// [emailSubjectByLink] Subject line for the email message template for sending a confirmation link to the user.
  /// [smsMessage] SMS message template. Must contain the `{####}` placeholder. Conflicts with `sms_verification_message` argument.
  UserPoolVerificationMessageTemplate({
    this.defaultEmailOption,
    this.emailMessage,
    this.emailMessageByLink,
    this.emailSubject,
    this.emailSubjectByLink,
    this.smsMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultEmailOption': ?defaultEmailOption,
      'emailMessage': ?emailMessage,
      'emailMessageByLink': ?emailMessageByLink,
      'emailSubject': ?emailSubject,
      'emailSubjectByLink': ?emailSubjectByLink,
      'smsMessage': ?smsMessage,
    };
  }

  factory UserPoolVerificationMessageTemplate.fromMap(
    Map<String, dynamic> map,
  ) {
    return UserPoolVerificationMessageTemplate(
      defaultEmailOption: map['defaultEmailOption'] == null
          ? null
          : map['defaultEmailOption'] as String,
      emailMessage: map['emailMessage'] == null
          ? null
          : map['emailMessage'] as String,
      emailMessageByLink: map['emailMessageByLink'] == null
          ? null
          : map['emailMessageByLink'] as String,
      emailSubject: map['emailSubject'] == null
          ? null
          : map['emailSubject'] as String,
      emailSubjectByLink: map['emailSubjectByLink'] == null
          ? null
          : map['emailSubjectByLink'] as String,
      smsMessage: map['smsMessage'] == null
          ? null
          : map['smsMessage'] as String,
    );
  }
}
