// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleSetRuleActionBounce {
  /// Policy applied when the action fails.
  final pulumi.Input<String>? actionFailurePolicy;
  /// Diagnostic message included in the bounce.
  final pulumi.Input<String> diagnosticMessage;
  /// Human-readable bounce message.
  final pulumi.Input<String>? message;
  /// ARN of the IAM role used to send the bounce.
  final pulumi.Input<String> roleArn;
  /// Sender address of the bounce.
  final pulumi.Input<String> sender;
  /// SMTP reply code.
  final pulumi.Input<String> smtpReplyCode;
  /// Enhanced status code.
  final pulumi.Input<String> statusCode;

  /// Creates a new [RuleSetRuleActionBounce].
  /// [actionFailurePolicy] Policy applied when the action fails.
  /// [diagnosticMessage] Diagnostic message included in the bounce.
  /// [message] Human-readable bounce message.
  /// [roleArn] ARN of the IAM role used to send the bounce.
  /// [sender] Sender address of the bounce.
  /// [smtpReplyCode] SMTP reply code.
  /// [statusCode] Enhanced status code.
  const RuleSetRuleActionBounce({
    this.actionFailurePolicy,
    required this.diagnosticMessage,
    this.message,
    required this.roleArn,
    required this.sender,
    required this.smtpReplyCode,
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionFailurePolicy': ?actionFailurePolicy,
      'diagnosticMessage': diagnosticMessage,
      'message': ?message,
      'roleArn': roleArn,
      'sender': sender,
      'smtpReplyCode': smtpReplyCode,
      'statusCode': statusCode,
    };
  }

  factory RuleSetRuleActionBounce.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleActionBounce(
      actionFailurePolicy: (() { final guardedValue = map['actionFailurePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diagnosticMessage: pulumi.Input.fromValue(map['diagnosticMessage'] as String),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      sender: pulumi.Input.fromValue(map['sender'] as String),
      smtpReplyCode: pulumi.Input.fromValue(map['smtpReplyCode'] as String),
      statusCode: pulumi.Input.fromValue(map['statusCode'] as String),
    );
  }
}
