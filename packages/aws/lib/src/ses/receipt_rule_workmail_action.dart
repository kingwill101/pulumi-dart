// ignore_for_file: unused_element, unnecessary_cast

class ReceiptRuleWorkmailAction {
  /// The ARN of the WorkMail organization
  final String organizationArn;

  /// The position of the action in the receipt rule
  final int position;

  /// The ARN of an SNS topic to notify
  final String? topicArn;

  /// Creates a new [ReceiptRuleWorkmailAction].
  /// [organizationArn] The ARN of the WorkMail organization
  /// [position] The position of the action in the receipt rule
  /// [topicArn] The ARN of an SNS topic to notify
  ReceiptRuleWorkmailAction({
    required this.organizationArn,
    required this.position,
    this.topicArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organizationArn'] = organizationArn;
    map['position'] = position;
    final topicArnValue = topicArn;
    if (topicArnValue != null) {
      map['topicArn'] = topicArnValue;
    }
    return map;
  }

  factory ReceiptRuleWorkmailAction.fromMap(Map<String, dynamic> map) {
    return ReceiptRuleWorkmailAction(
      organizationArn: map['organizationArn'] as String,
      position: map['position'] as int,
      topicArn: map['topicArn'] == null ? null : map['topicArn'] as String,
    );
  }
}
