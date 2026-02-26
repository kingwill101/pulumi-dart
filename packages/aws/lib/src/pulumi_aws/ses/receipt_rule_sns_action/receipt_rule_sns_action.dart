// ignore_for_file: unused_element, unnecessary_cast

class ReceiptRuleSnsAction {
  /// The encoding to use for the email within the Amazon SNS notification. Default value is `UTF-8`.
  final String? encoding;

  /// The position of the action in the receipt rule
  final int position;

  /// The ARN of an SNS topic to notify
  final String topicArn;

  ReceiptRuleSnsAction({
    this.encoding,
    required this.position,
    required this.topicArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encodingValue = encoding;
    if (encodingValue != null) {
      map['encoding'] = encodingValue;
    }
    map['position'] = position;
    map['topicArn'] = topicArn;
    return map;
  }

  factory ReceiptRuleSnsAction.fromMap(Map<String, dynamic> map) {
    return ReceiptRuleSnsAction(
      encoding: map['encoding'] == null ? null : map['encoding'] as String,
      position: map['position'] as int,
      topicArn: map['topicArn'] as String,
    );
  }
}
