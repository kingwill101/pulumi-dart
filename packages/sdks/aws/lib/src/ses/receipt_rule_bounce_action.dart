// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReceiptRuleBounceAction {
  /// Message to send.
  final pulumi.Input<String> message;
  /// Position of the action in the receipt rule.
  final pulumi.Input<int> position;
  /// Email address of the sender.
  final pulumi.Input<String> sender;
  /// RFC 5321 SMTP reply code.
  final pulumi.Input<String> smtpReplyCode;
  /// RFC 3463 SMTP enhanced status code.
  final pulumi.Input<String?>? statusCode;
  /// ARN of an SNS topic to notify.
  final pulumi.Input<String?>? topicArn;

  /// Creates a new [ReceiptRuleBounceAction].
  /// [message] Message to send.
  /// [position] Position of the action in the receipt rule.
  /// [sender] Email address of the sender.
  /// [smtpReplyCode] RFC 5321 SMTP reply code.
  /// [statusCode] RFC 3463 SMTP enhanced status code.
  /// [topicArn] ARN of an SNS topic to notify.
  const ReceiptRuleBounceAction({
    required this.message,
    required this.position,
    required this.sender,
    required this.smtpReplyCode,
    this.statusCode,
    this.topicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
      'position': position,
      'sender': sender,
      'smtpReplyCode': smtpReplyCode,
      'statusCode': ?statusCode,
      'topicArn': ?topicArn,
    };
  }

  factory ReceiptRuleBounceAction.fromMap(Map<String, dynamic> map) {
    return ReceiptRuleBounceAction(
      message: pulumi.Input.fromValue(map['message'] as String),
      position: pulumi.Input.fromValue((map['position'] as num).toInt()),
      sender: pulumi.Input.fromValue(map['sender'] as String),
      smtpReplyCode: pulumi.Input.fromValue(map['smtpReplyCode'] as String),
      statusCode: (() { final guardedValue = map['statusCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topicArn: (() { final guardedValue = map['topicArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
