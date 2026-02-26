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

  GetUserPoolEmailConfiguration({
    required this.configurationSet,
    required this.emailSendingAccount,
    required this.from,
    required this.replyToEmailAddress,
    required this.sourceArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configurationSet'] = configurationSet;
    map['emailSendingAccount'] = emailSendingAccount;
    map['from'] = from;
    map['replyToEmailAddress'] = replyToEmailAddress;
    map['sourceArn'] = sourceArn;
    return map;
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
