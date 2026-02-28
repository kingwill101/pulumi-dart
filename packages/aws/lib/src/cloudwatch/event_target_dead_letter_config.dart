// ignore_for_file: unused_element, unnecessary_cast


class EventTargetDeadLetterConfig {
  /// ARN of the SQS queue specified as the target for the dead-letter queue.
  final String? arn;

  /// Creates a new [EventTargetDeadLetterConfig].
  /// [arn] ARN of the SQS queue specified as the target for the dead-letter queue.
  EventTargetDeadLetterConfig({
    this.arn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
    };
  }

  factory EventTargetDeadLetterConfig.fromMap(Map<String, dynamic> map) {
    return EventTargetDeadLetterConfig(
      arn: map['arn'] == null ? null : map['arn'] as String,
    );
  }
}

