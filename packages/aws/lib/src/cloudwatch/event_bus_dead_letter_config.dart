// ignore_for_file: unused_element, unnecessary_cast

class EventBusDeadLetterConfig {
  /// The ARN of the SQS queue specified as the target for the dead-letter queue.
  final String? arn;

  /// Creates a new [EventBusDeadLetterConfig].
  /// [arn] The ARN of the SQS queue specified as the target for the dead-letter queue.
  EventBusDeadLetterConfig({
    this.arn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    return map;
  }

  factory EventBusDeadLetterConfig.fromMap(Map<String, dynamic> map) {
    return EventBusDeadLetterConfig(
      arn: map['arn'] == null ? null : map['arn'] as String,
    );
  }
}
