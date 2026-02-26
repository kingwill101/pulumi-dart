// ignore_for_file: unused_element, unnecessary_cast

class TopicRuleErrorActionLambda {
  /// The ARN of the Lambda function.
  final String functionArn;

  TopicRuleErrorActionLambda({
    required this.functionArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['functionArn'] = functionArn;
    return map;
  }

  factory TopicRuleErrorActionLambda.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionLambda(
      functionArn: map['functionArn'] as String,
    );
  }
}
