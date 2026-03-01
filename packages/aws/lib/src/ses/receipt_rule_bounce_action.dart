// ignore_for_file: unused_element, unnecessary_cast


class ReceiptRuleBounceAction {
  /// The message to send
  final String message;
  /// The position of the action in the receipt rule
  final int position;
  /// The email address of the sender
  final String sender;
  /// The RFC 5321 SMTP reply code
  final String smtpReplyCode;
  /// The RFC 3463 SMTP enhanced status code
  final String? statusCode;
  /// The ARN of an SNS topic to notify
  final String? topicArn;

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
      message: map['message'] as String,
      position: map['position'] as int,
      sender: map['sender'] as String,
      smtpReplyCode: map['smtpReplyCode'] as String,
      statusCode: map['statusCode'] == null ? null : map['statusCode'] as String,
      topicArn: map['topicArn'] == null ? null : map['topicArn'] as String,
    );
  }
}

