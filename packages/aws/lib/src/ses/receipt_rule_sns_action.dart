// ignore_for_file: unused_element, unnecessary_cast

class ReceiptRuleSnsAction {
  /// The encoding to use for the email within the Amazon SNS notification. Default value is `UTF-8`.
  final String? encoding;

  /// The position of the action in the receipt rule
  final int position;

  /// The ARN of an SNS topic to notify
  final String topicArn;

  /// Creates a new [ReceiptRuleSnsAction].
  /// [encoding] The encoding to use for the email within the Amazon SNS notification. Default value is `UTF-8`.
  /// [position] The position of the action in the receipt rule
  /// [topicArn] The ARN of an SNS topic to notify
  ReceiptRuleSnsAction({
    this.encoding,
    required this.position,
    required this.topicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encoding': ?encoding,
      'position': position,
      'topicArn': topicArn,
    };
  }

  factory ReceiptRuleSnsAction.fromMap(Map<String, dynamic> map) {
    return ReceiptRuleSnsAction(
      encoding: map['encoding'] == null ? null : map['encoding'] as String,
      position: map['position'] as int,
      topicArn: map['topicArn'] as String,
    );
  }
}
