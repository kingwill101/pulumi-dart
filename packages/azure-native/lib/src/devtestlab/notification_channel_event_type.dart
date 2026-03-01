/// The event type for which this notification is enabled (i.e. AutoShutdown, Cost)
enum NotificationChannelEventType {
  autoShutdown("AutoShutdown"),
  cost("Cost");

  const NotificationChannelEventType(this.value);
  final String value;

  static NotificationChannelEventType fromValue(String value) {
    for (final item in NotificationChannelEventType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotificationChannelEventType value: $value');
  }
}

