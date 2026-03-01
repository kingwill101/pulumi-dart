// ignore_for_file: unused_element, unnecessary_cast

class EventBusDeadLetterConfig {
  /// The ARN of the SQS queue specified as the target for the dead-letter queue.
  final String? arn;

  /// Creates a new [EventBusDeadLetterConfig].
  /// [arn] The ARN of the SQS queue specified as the target for the dead-letter queue.
  EventBusDeadLetterConfig({this.arn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'arn': ?arn};
  }

  factory EventBusDeadLetterConfig.fromMap(Map<String, dynamic> map) {
    return EventBusDeadLetterConfig(
      arn: map['arn'] == null ? null : map['arn'] as String,
    );
  }
}
