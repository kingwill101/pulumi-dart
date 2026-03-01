// ignore_for_file: unused_element, unnecessary_cast

class RuleSourceSourceDetail {
  /// The source of the event, such as an AWS service, that triggers AWS Config to evaluate your AWSresources. This defaults to `aws.config` and is the only valid value.
  final String? eventSource;

  /// The frequency that you want AWS Config to run evaluations for a rule that istriggered periodically. If specified, requires `message_type` to be `ScheduledNotification`.
  final String? maximumExecutionFrequency;

  /// The type of notification that triggers AWS Config to run an evaluation for a rule. You canspecify the following notification types:
  /// * `ConfigurationItemChangeNotification` - Triggers an evaluation when AWS Config delivers a configuration item as a result of a resource change.
  /// * `OversizedConfigurationItemChangeNotification` - Triggers an evaluation when AWS Config delivers an oversized configuration item. AWS Config may generate this notification type when a resource changes and the notification exceeds the maximum size allowed by Amazon SNS.
  /// * `ScheduledNotification` - Triggers a periodic evaluation at the frequency specified for `maximum_execution_frequency`.
  /// * `ConfigurationSnapshotDeliveryCompleted` - Triggers a periodic evaluation when AWS Config delivers a configuration snapshot.
  final String? messageType;

  /// Creates a new [RuleSourceSourceDetail].
  /// [eventSource] The source of the event, such as an AWS service, that triggers AWS Config to evaluate your AWSresources. This defaults to `aws.config` and is the only valid value.
  /// [maximumExecutionFrequency] The frequency that you want AWS Config to run evaluations for a rule that istriggered periodically. If specified, requires `message_type` to be `ScheduledNotification`.
  /// [messageType] The type of notification that triggers AWS Config to run an evaluation for a rule. You canspecify the following notification types:
  RuleSourceSourceDetail({
    this.eventSource,
    this.maximumExecutionFrequency,
    this.messageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventSource': ?eventSource,
      'maximumExecutionFrequency': ?maximumExecutionFrequency,
      'messageType': ?messageType,
    };
  }

  factory RuleSourceSourceDetail.fromMap(Map<String, dynamic> map) {
    return RuleSourceSourceDetail(
      eventSource: map['eventSource'] == null
          ? null
          : map['eventSource'] as String,
      maximumExecutionFrequency: map['maximumExecutionFrequency'] == null
          ? null
          : map['maximumExecutionFrequency'] as String,
      messageType: map['messageType'] == null
          ? null
          : map['messageType'] as String,
    );
  }
}
