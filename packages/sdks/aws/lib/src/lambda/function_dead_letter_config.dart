// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionDeadLetterConfig {
  /// ARN of an SNS topic or SQS queue to notify when an invocation fails.
  final pulumi.Input<String> targetArn;

  /// Creates a new [FunctionDeadLetterConfig].
  /// [targetArn] ARN of an SNS topic or SQS queue to notify when an invocation fails.
  FunctionDeadLetterConfig({
    required this.targetArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetArn': targetArn,
    };
  }

  factory FunctionDeadLetterConfig.fromMap(Map<String, dynamic> map) {
    return FunctionDeadLetterConfig(
      targetArn: pulumi.Input.fromValue(map['targetArn'] as String),
    );
  }
}

