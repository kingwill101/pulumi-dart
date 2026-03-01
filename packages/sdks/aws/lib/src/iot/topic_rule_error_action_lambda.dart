// ignore_for_file: unused_element, unnecessary_cast


class TopicRuleErrorActionLambda {
  /// The ARN of the Lambda function.
  final String functionArn;

  /// Creates a new [TopicRuleErrorActionLambda].
  /// [functionArn] The ARN of the Lambda function.
  TopicRuleErrorActionLambda({
    required this.functionArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionArn': functionArn,
    };
  }

  factory TopicRuleErrorActionLambda.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionLambda(
      functionArn: map['functionArn'] as String,
    );
  }
}

