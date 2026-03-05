// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserPoolEmailConfiguration {
  /// Email configuration set name from SES.
  final pulumi.Input<String>? configurationSet;
  /// Email delivery method to use. `COGNITO_DEFAULT` for the default email functionality built into Cognito or `DEVELOPER` to use your Amazon SES configuration. Required to be `DEVELOPER` if `from_email_address` is set.
  final pulumi.Input<String>? emailSendingAccount;
  /// Sender’s email address or sender’s display name with their email address (e.g., `john@example.com`, `John Smith &lt;john@example.com&gt;` or `\"John Smith Ph.D.\" &lt;john@example.com&gt;`). Escaped double quotes are required around display names that contain certain characters as specified in [RFC 5322](https://tools.ietf.org/html/rfc5322).
  final pulumi.Input<String>? fromEmailAddress;
  /// REPLY-TO email address.
  final pulumi.Input<String>? replyToEmailAddress;
  /// ARN of the SES verified email identity to use. Required if `email_sending_account` is set to `DEVELOPER`.
  final pulumi.Input<String>? sourceArn;

  /// Creates a new [UserPoolEmailConfiguration].
  /// [configurationSet] Email configuration set name from SES.
  /// [emailSendingAccount] Email delivery method to use. `COGNITO_DEFAULT` for the default email functionality built into Cognito or `DEVELOPER` to use your Amazon SES configuration. Required to be `DEVELOPER` if `from_email_address` is set.
  /// [fromEmailAddress] Sender’s email address or sender’s display name with their email address (e.g., `john@example.com`, `John Smith &lt;john@example.com&gt;` or `\"John Smith Ph.D.\" &lt;john@example.com&gt;`). Escaped double quotes are required around display names that contain certain characters as specified in [RFC 5322](https://tools.ietf.org/html/rfc5322).
  /// [replyToEmailAddress] REPLY-TO email address.
  /// [sourceArn] ARN of the SES verified email identity to use. Required if `email_sending_account` is set to `DEVELOPER`.
  UserPoolEmailConfiguration({
    this.configurationSet,
    this.emailSendingAccount,
    this.fromEmailAddress,
    this.replyToEmailAddress,
    this.sourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationSet': ?configurationSet,
      'emailSendingAccount': ?emailSendingAccount,
      'fromEmailAddress': ?fromEmailAddress,
      'replyToEmailAddress': ?replyToEmailAddress,
      'sourceArn': ?sourceArn,
    };
  }

  factory UserPoolEmailConfiguration.fromMap(Map<String, dynamic> map) {
    return UserPoolEmailConfiguration(
      configurationSet: (() { final guardedValue = map['configurationSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emailSendingAccount: (() { final guardedValue = map['emailSendingAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fromEmailAddress: (() { final guardedValue = map['fromEmailAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replyToEmailAddress: (() { final guardedValue = map['replyToEmailAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceArn: (() { final guardedValue = map['sourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

