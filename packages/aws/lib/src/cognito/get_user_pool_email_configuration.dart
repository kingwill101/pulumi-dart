// ignore_for_file: unused_element, unnecessary_cast

class GetUserPoolEmailConfiguration {
  /// - Configuration set used for sending emails.
  final String configurationSet;

  /// - Email sending account.
  final String emailSendingAccount;

  /// - Email sender address.
  final String from;

  /// - Reply-to email address.
  final String replyToEmailAddress;

  /// - Source Amazon Resource Name (ARN) for emails.
  final String sourceArn;

  /// Creates a new [GetUserPoolEmailConfiguration].
  /// [configurationSet] - Configuration set used for sending emails.
  /// [emailSendingAccount] - Email sending account.
  /// [from] - Email sender address.
  /// [replyToEmailAddress] - Reply-to email address.
  /// [sourceArn] - Source Amazon Resource Name (ARN) for emails.
  GetUserPoolEmailConfiguration({
    required this.configurationSet,
    required this.emailSendingAccount,
    required this.from,
    required this.replyToEmailAddress,
    required this.sourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationSet': configurationSet,
      'emailSendingAccount': emailSendingAccount,
      'from': from,
      'replyToEmailAddress': replyToEmailAddress,
      'sourceArn': sourceArn,
    };
  }

  factory GetUserPoolEmailConfiguration.fromMap(Map<String, dynamic> map) {
    return GetUserPoolEmailConfiguration(
      configurationSet: map['configurationSet'] as String,
      emailSendingAccount: map['emailSendingAccount'] as String,
      from: map['from'] as String,
      replyToEmailAddress: map['replyToEmailAddress'] as String,
      sourceArn: map['sourceArn'] as String,
    );
  }
}
