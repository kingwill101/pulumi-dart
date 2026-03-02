// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserPoolVerificationMessageTemplate {
  /// Default email option. Must be either `CONFIRM_WITH_CODE` or `CONFIRM_WITH_LINK`. Defaults to `CONFIRM_WITH_CODE`.
  final pulumi.Input<String>? defaultEmailOption;
  /// Email message template. Must contain the `{####}` placeholder. Conflicts with `email_verification_message` argument.
  final pulumi.Input<String>? emailMessage;
  /// Email message template for sending a confirmation link to the user, it must contain the `{##Click Here##}` placeholder.
  final pulumi.Input<String>? emailMessageByLink;
  /// Subject line for the email message template. Conflicts with `email_verification_subject` argument.
  final pulumi.Input<String>? emailSubject;
  /// Subject line for the email message template for sending a confirmation link to the user.
  final pulumi.Input<String>? emailSubjectByLink;
  /// SMS message template. Must contain the `{####}` placeholder. Conflicts with `sms_verification_message` argument.
  final pulumi.Input<String>? smsMessage;

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

  factory UserPoolVerificationMessageTemplate.fromMap(Map<String, dynamic> map) {
    return UserPoolVerificationMessageTemplate(
      defaultEmailOption: map['defaultEmailOption'] == null ? null : ((map['defaultEmailOption'] as String).input()).input(),
      emailMessage: map['emailMessage'] == null ? null : ((map['emailMessage'] as String).input()).input(),
      emailMessageByLink: map['emailMessageByLink'] == null ? null : ((map['emailMessageByLink'] as String).input()).input(),
      emailSubject: map['emailSubject'] == null ? null : ((map['emailSubject'] as String).input()).input(),
      emailSubjectByLink: map['emailSubjectByLink'] == null ? null : ((map['emailSubjectByLink'] as String).input()).input(),
      smsMessage: map['smsMessage'] == null ? null : ((map['smsMessage'] as String).input()).input(),
    );
  }
}

