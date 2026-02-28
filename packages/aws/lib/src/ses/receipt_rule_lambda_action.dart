// ignore_for_file: unused_element, unnecessary_cast

class ReceiptRuleLambdaAction {
  /// The ARN of the Lambda function to invoke
  final String functionArn;

  /// `Event` or `RequestResponse`
  final String? invocationType;

  /// The position of the action in the receipt rule
  final int position;

  /// The ARN of an SNS topic to notify
  final String? topicArn;

  /// Creates a new [ReceiptRuleLambdaAction].
  /// [functionArn] The ARN of the Lambda function to invoke
  /// [invocationType] `Event` or `RequestResponse`
  /// [position] The position of the action in the receipt rule
  /// [topicArn] The ARN of an SNS topic to notify
  ReceiptRuleLambdaAction({
    required this.functionArn,
    this.invocationType,
    required this.position,
    this.topicArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['functionArn'] = functionArn;
    final invocationTypeValue = invocationType;
    if (invocationTypeValue != null) {
      map['invocationType'] = invocationTypeValue;
    }
    map['position'] = position;
    final topicArnValue = topicArn;
    if (topicArnValue != null) {
      map['topicArn'] = topicArnValue;
    }
    return map;
  }

  factory ReceiptRuleLambdaAction.fromMap(Map<String, dynamic> map) {
    return ReceiptRuleLambdaAction(
      functionArn: map['functionArn'] as String,
      invocationType: map['invocationType'] == null
          ? null
          : map['invocationType'] as String,
      position: map['position'] as int,
      topicArn: map['topicArn'] == null ? null : map['topicArn'] as String,
    );
  }
}
