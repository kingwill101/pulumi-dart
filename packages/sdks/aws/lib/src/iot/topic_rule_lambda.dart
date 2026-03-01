// ignore_for_file: unused_element, unnecessary_cast


class TopicRuleLambda {
  /// The ARN of the Lambda function.
  final String functionArn;

  /// Creates a new [TopicRuleLambda].
  /// [functionArn] The ARN of the Lambda function.
  TopicRuleLambda({
    required this.functionArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionArn': functionArn,
    };
  }

  factory TopicRuleLambda.fromMap(Map<String, dynamic> map) {
    return TopicRuleLambda(
      functionArn: map['functionArn'] as String,
    );
  }
}

