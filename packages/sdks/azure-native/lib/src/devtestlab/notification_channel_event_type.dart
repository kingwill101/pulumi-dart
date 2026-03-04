/// The event type for which this notification is enabled (i.e. AutoShutdown, Cost)
enum NotificationChannelEventType {
  autoShutdown("AutoShutdown"),
  cost("Cost");

  const NotificationChannelEventType(this.wireValue);
  final String wireValue;

  static NotificationChannelEventType fromValue(String value) {
    for (final item in NotificationChannelEventType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotificationChannelEventType value: $value');
  }
}
