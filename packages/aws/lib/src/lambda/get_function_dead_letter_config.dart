// ignore_for_file: unused_element, unnecessary_cast

class GetFunctionDeadLetterConfig {
  /// ARN of an SNS topic or SQS queue to notify when an invocation fails.
  final String targetArn;

  /// Creates a new [GetFunctionDeadLetterConfig].
  /// [targetArn] ARN of an SNS topic or SQS queue to notify when an invocation fails.
  GetFunctionDeadLetterConfig({
    required this.targetArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetArn'] = targetArn;
    return map;
  }

  factory GetFunctionDeadLetterConfig.fromMap(Map<String, dynamic> map) {
    return GetFunctionDeadLetterConfig(
      targetArn: map['targetArn'] as String,
    );
  }
}
