// ignore_for_file: unused_element, unnecessary_cast

class GetEventBusDeadLetterConfig {
  /// The ARN of the SQS queue specified as the target for the dead-letter queue.
  final String arn;

  /// Creates a new [GetEventBusDeadLetterConfig].
  /// [arn] The ARN of the SQS queue specified as the target for the dead-letter queue.
  GetEventBusDeadLetterConfig({
    required this.arn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    return map;
  }

  factory GetEventBusDeadLetterConfig.fromMap(Map<String, dynamic> map) {
    return GetEventBusDeadLetterConfig(
      arn: map['arn'] as String,
    );
  }
}
