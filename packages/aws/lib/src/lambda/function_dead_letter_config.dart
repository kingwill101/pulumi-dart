// ignore_for_file: unused_element, unnecessary_cast

class FunctionDeadLetterConfig {
  /// ARN of an SNS topic or SQS queue to notify when an invocation fails.
  final String targetArn;

  /// Creates a new [FunctionDeadLetterConfig].
  /// [targetArn] ARN of an SNS topic or SQS queue to notify when an invocation fails.
  FunctionDeadLetterConfig({
    required this.targetArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetArn'] = targetArn;
    return map;
  }

  factory FunctionDeadLetterConfig.fromMap(Map<String, dynamic> map) {
    return FunctionDeadLetterConfig(
      targetArn: map['targetArn'] as String,
    );
  }
}
