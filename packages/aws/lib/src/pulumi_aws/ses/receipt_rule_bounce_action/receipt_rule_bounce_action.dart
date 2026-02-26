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

  ReceiptRuleBounceAction({
    required this.message,
    required this.position,
    required this.sender,
    required this.smtpReplyCode,
    this.statusCode,
    this.topicArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['message'] = message;
    map['position'] = position;
    map['sender'] = sender;
    map['smtpReplyCode'] = smtpReplyCode;
    final statusCodeValue = statusCode;
    if (statusCodeValue != null) {
      map['statusCode'] = statusCodeValue;
    }
    final topicArnValue = topicArn;
    if (topicArnValue != null) {
      map['topicArn'] = topicArnValue;
    }
    return map;
  }

  factory ReceiptRuleBounceAction.fromMap(Map<String, dynamic> map) {
    return ReceiptRuleBounceAction(
      message: map['message'] as String,
      position: map['position'] as int,
      sender: map['sender'] as String,
      smtpReplyCode: map['smtpReplyCode'] as String,
      statusCode:
          map['statusCode'] == null ? null : map['statusCode'] as String,
      topicArn: map['topicArn'] == null ? null : map['topicArn'] as String,
    );
  }
}
