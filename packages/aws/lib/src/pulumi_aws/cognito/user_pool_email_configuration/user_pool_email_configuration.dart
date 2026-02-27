// ignore_for_file: unused_element, unnecessary_cast

class UserPoolEmailConfiguration {
  /// Email configuration set name from SES.
  final String? configurationSet;

  /// Email delivery method to use. `COGNITO_DEFAULT` for the default email functionality built into Cognito or `DEVELOPER` to use your Amazon SES configuration. Required to be `DEVELOPER` if `from_email_address` is set.
  final String? emailSendingAccount;

  /// Sender’s email address or sender’s display name with their email address (e.g., `john@example.com`, `John Smith <john@example.com>` or `\"John Smith Ph.D.\" <john@example.com>`). Escaped double quotes are required around display names that contain certain characters as specified in [RFC 5322](https://tools.ietf.org/html/rfc5322).
  final String? fromEmailAddress;

  /// REPLY-TO email address.
  final String? replyToEmailAddress;

  /// ARN of the SES verified email identity to use. Required if `email_sending_account` is set to `DEVELOPER`.
  final String? sourceArn;

  UserPoolEmailConfiguration({
    this.configurationSet,
    this.emailSendingAccount,
    this.fromEmailAddress,
    this.replyToEmailAddress,
    this.sourceArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configurationSetValue = configurationSet;
    if (configurationSetValue != null) {
      map['configurationSet'] = configurationSetValue;
    }
    final emailSendingAccountValue = emailSendingAccount;
    if (emailSendingAccountValue != null) {
      map['emailSendingAccount'] = emailSendingAccountValue;
    }
    final fromEmailAddressValue = fromEmailAddress;
    if (fromEmailAddressValue != null) {
      map['fromEmailAddress'] = fromEmailAddressValue;
    }
    final replyToEmailAddressValue = replyToEmailAddress;
    if (replyToEmailAddressValue != null) {
      map['replyToEmailAddress'] = replyToEmailAddressValue;
    }
    final sourceArnValue = sourceArn;
    if (sourceArnValue != null) {
      map['sourceArn'] = sourceArnValue;
    }
    return map;
  }

  factory UserPoolEmailConfiguration.fromMap(Map<String, dynamic> map) {
    return UserPoolEmailConfiguration(
      configurationSet: map['configurationSet'] == null
          ? null
          : map['configurationSet'] as String,
      emailSendingAccount: map['emailSendingAccount'] == null
          ? null
          : map['emailSendingAccount'] as String,
      fromEmailAddress: map['fromEmailAddress'] == null
          ? null
          : map['fromEmailAddress'] as String,
      replyToEmailAddress: map['replyToEmailAddress'] == null
          ? null
          : map['replyToEmailAddress'] as String,
      sourceArn: map['sourceArn'] == null ? null : map['sourceArn'] as String,
    );
  }
}
