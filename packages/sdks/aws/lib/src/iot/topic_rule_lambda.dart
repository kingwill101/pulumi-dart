// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicRuleLambda {
  /// The ARN of the Lambda function.
  final pulumi.Input<String> functionArn;

  /// Creates a new [TopicRuleLambda].
  /// [functionArn] The ARN of the Lambda function.
  const TopicRuleLambda({
    required this.functionArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionArn': functionArn,
    };
  }

  factory TopicRuleLambda.fromMap(Map<String, dynamic> map) {
    return TopicRuleLambda(
      functionArn: pulumi.Input.fromValue(map['functionArn'] as String),
    );
  }
}
