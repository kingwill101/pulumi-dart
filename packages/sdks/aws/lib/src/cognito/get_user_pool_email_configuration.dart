// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserPoolEmailConfiguration {
  /// - Configuration set used for sending emails.
  final pulumi.Input<String> configurationSet;
  /// - Email sending account.
  final pulumi.Input<String> emailSendingAccount;
  /// - Email sender address.
  final pulumi.Input<String> from;
  /// - Reply-to email address.
  final pulumi.Input<String> replyToEmailAddress;
  /// - Source ARN for emails.
  final pulumi.Input<String> sourceArn;

  /// Creates a new [GetUserPoolEmailConfiguration].
  /// [configurationSet] - Configuration set used for sending emails.
  /// [emailSendingAccount] - Email sending account.
  /// [from] - Email sender address.
  /// [replyToEmailAddress] - Reply-to email address.
  /// [sourceArn] - Source ARN for emails.
  const GetUserPoolEmailConfiguration({
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
      configurationSet: pulumi.Input.fromValue(map['configurationSet'] as String),
      emailSendingAccount: pulumi.Input.fromValue(map['emailSendingAccount'] as String),
      from: pulumi.Input.fromValue(map['from'] as String),
      replyToEmailAddress: pulumi.Input.fromValue(map['replyToEmailAddress'] as String),
      sourceArn: pulumi.Input.fromValue(map['sourceArn'] as String),
    );
  }
}
