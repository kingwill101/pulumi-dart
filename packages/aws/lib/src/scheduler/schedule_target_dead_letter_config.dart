// ignore_for_file: unused_element, unnecessary_cast


class ScheduleTargetDeadLetterConfig {
  /// ARN of the SQS queue specified as the destination for the dead-letter queue.
  final String arn;

  /// Creates a new [ScheduleTargetDeadLetterConfig].
  /// [arn] ARN of the SQS queue specified as the destination for the dead-letter queue.
  ScheduleTargetDeadLetterConfig({
    required this.arn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
    };
  }

  factory ScheduleTargetDeadLetterConfig.fromMap(Map<String, dynamic> map) {
    return ScheduleTargetDeadLetterConfig(
      arn: map['arn'] as String,
    );
  }
}

