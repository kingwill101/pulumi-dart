// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserPoolVerificationMessageTemplate {
  /// Default email option. Must be either `CONFIRM_WITH_CODE` or `CONFIRM_WITH_LINK`. Defaults to `CONFIRM_WITH_CODE`.
  final pulumi.Input<String?>? defaultEmailOption;
  /// Email message template. Must contain the `{####}` placeholder. Conflicts with `emailVerificationMessage` argument.
  final pulumi.Input<String?>? emailMessage;
  /// Email message template for sending a confirmation link to the user, it must contain the `{##Click Here##}` placeholder.
  final pulumi.Input<String?>? emailMessageByLink;
  /// Subject line for the email message template. Conflicts with `emailVerificationSubject` argument.
  final pulumi.Input<String?>? emailSubject;
  /// Subject line for the email message template for sending a confirmation link to the user.
  final pulumi.Input<String?>? emailSubjectByLink;
  /// SMS message template. Must contain the `{####}` placeholder. Conflicts with `smsVerificationMessage` argument.
  final pulumi.Input<String?>? smsMessage;

  /// Creates a new [UserPoolVerificationMessageTemplate].
  /// [defaultEmailOption] Default email option. Must be either `CONFIRM_WITH_CODE` or `CONFIRM_WITH_LINK`. Defaults to `CONFIRM_WITH_CODE`.
  /// [emailMessage] Email message template. Must contain the `{####}` placeholder. Conflicts with `emailVerificationMessage` argument.
  /// [emailMessageByLink] Email message template for sending a confirmation link to the user, it must contain the `{##Click Here##}` placeholder.
  /// [emailSubject] Subject line for the email message template. Conflicts with `emailVerificationSubject` argument.
  /// [emailSubjectByLink] Subject line for the email message template for sending a confirmation link to the user.
  /// [smsMessage] SMS message template. Must contain the `{####}` placeholder. Conflicts with `smsVerificationMessage` argument.
  const UserPoolVerificationMessageTemplate({
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
      defaultEmailOption: (() { final guardedValue = map['defaultEmailOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emailMessage: (() { final guardedValue = map['emailMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emailMessageByLink: (() { final guardedValue = map['emailMessageByLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emailSubject: (() { final guardedValue = map['emailSubject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emailSubjectByLink: (() { final guardedValue = map['emailSubjectByLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      smsMessage: (() { final guardedValue = map['smsMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
