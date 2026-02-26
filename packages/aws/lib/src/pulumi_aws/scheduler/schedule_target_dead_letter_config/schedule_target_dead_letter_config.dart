// ignore_for_file: unused_element, unnecessary_cast

class ScheduleTargetDeadLetterConfig {
  /// ARN of the SQS queue specified as the destination for the dead-letter queue.
  final String arn;

  ScheduleTargetDeadLetterConfig({
    required this.arn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    return map;
  }

  factory ScheduleTargetDeadLetterConfig.fromMap(Map<String, dynamic> map) {
    return ScheduleTargetDeadLetterConfig(
      arn: map['arn'] as String,
    );
  }
}
