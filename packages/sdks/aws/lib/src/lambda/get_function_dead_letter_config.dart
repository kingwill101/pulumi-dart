// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFunctionDeadLetterConfig {
  /// ARN of an SNS topic or SQS queue to notify when an invocation fails.
  final pulumi.Input<String> targetArn;

  /// Creates a new [GetFunctionDeadLetterConfig].
  /// [targetArn] ARN of an SNS topic or SQS queue to notify when an invocation fails.
  const GetFunctionDeadLetterConfig({
    required this.targetArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetArn': targetArn,
    };
  }

  factory GetFunctionDeadLetterConfig.fromMap(Map<String, dynamic> map) {
    return GetFunctionDeadLetterConfig(
      targetArn: pulumi.Input.fromValue(map['targetArn'] as String),
    );
  }
}

