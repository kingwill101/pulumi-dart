// ignore_for_file: unused_element, unnecessary_cast


class SystemTopicEventSubscriptionRetryPolicy {
  /// Specifies the time to live (in minutes) for events. Supported range is `1` to `1440`. See [official documentation](https://docs.microsoft.com/azure/event-grid/manage-event-delivery#set-retry-policy) for more details.
  final int eventTimeToLive;
  /// Specifies the maximum number of delivery retry attempts for events.
  final int maxDeliveryAttempts;

  /// Creates a new [SystemTopicEventSubscriptionRetryPolicy].
  /// [eventTimeToLive] Specifies the time to live (in minutes) for events. Supported range is `1` to `1440`. See [official documentation](https://docs.microsoft.com/azure/event-grid/manage-event-delivery#set-retry-policy) for more details.
  /// [maxDeliveryAttempts] Specifies the maximum number of delivery retry attempts for events.
  SystemTopicEventSubscriptionRetryPolicy({
    required this.eventTimeToLive,
    required this.maxDeliveryAttempts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventTimeToLive': eventTimeToLive,
      'maxDeliveryAttempts': maxDeliveryAttempts,
    };
  }

  factory SystemTopicEventSubscriptionRetryPolicy.fromMap(Map<String, dynamic> map) {
    return SystemTopicEventSubscriptionRetryPolicy(
      eventTimeToLive: map['eventTimeToLive'] as int,
      maxDeliveryAttempts: map['maxDeliveryAttempts'] as int,
    );
  }
}

