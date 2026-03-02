// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReceiptRuleBounceAction {
  /// The message to send
  final pulumi.Input<String> message;
  /// The position of the action in the receipt rule
  final pulumi.Input<int> position;
  /// The email address of the sender
  final pulumi.Input<String> sender;
  /// The RFC 5321 SMTP reply code
  final pulumi.Input<String> smtpReplyCode;
  /// The RFC 3463 SMTP enhanced status code
  final pulumi.Input<String>? statusCode;
  /// The ARN of an SNS topic to notify
  final pulumi.Input<String>? topicArn;

  /// Creates a new [ReceiptRuleBounceAction].
  /// [message] The message to send
  /// [position] The position of the action in the receipt rule
  /// [sender] The email address of the sender
  /// [smtpReplyCode] The RFC 5321 SMTP reply code
  /// [statusCode] The RFC 3463 SMTP enhanced status code
  /// [topicArn] The ARN of an SNS topic to notify
  ReceiptRuleBounceAction({
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
      message: (map['message'] as String).input(),
      position: (map['position'] as int).input(),
      sender: (map['sender'] as String).input(),
      smtpReplyCode: (map['smtpReplyCode'] as String).input(),
      statusCode: map['statusCode'] == null ? null : ((map['statusCode'] as String).input()).input(),
      topicArn: map['topicArn'] == null ? null : ((map['topicArn'] as String).input()).input(),
    );
  }
}

