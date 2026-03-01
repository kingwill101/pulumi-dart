// ignore_for_file: unused_element, unnecessary_cast


class ReceiptRuleStopAction {
  /// The position of the action in the receipt rule
  final int position;
  /// The scope to apply. The only acceptable value is `RuleSet`.
  final String scope;
  /// The ARN of an SNS topic to notify
  final String? topicArn;

  /// Creates a new [ReceiptRuleStopAction].
  /// [position] The position of the action in the receipt rule
  /// [scope] The scope to apply. The only acceptable value is `RuleSet`.
  /// [topicArn] The ARN of an SNS topic to notify
  ReceiptRuleStopAction({
    required this.position,
    required this.scope,
    this.topicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'position': position,
      'scope': scope,
      'topicArn': ?topicArn,
    };
  }

  factory ReceiptRuleStopAction.fromMap(Map<String, dynamic> map) {
    return ReceiptRuleStopAction(
      position: map['position'] as int,
      scope: map['scope'] as String,
      topicArn: map['topicArn'] == null ? null : map['topicArn'] as String,
    );
  }
}

