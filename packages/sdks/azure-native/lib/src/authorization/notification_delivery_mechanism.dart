/// The type of notification.
enum NotificationDeliveryMechanism {
  valueEmail("Email");

  const NotificationDeliveryMechanism(this.wireValue);
  final String wireValue;

  static NotificationDeliveryMechanism fromValue(String value) {
    for (final item in NotificationDeliveryMechanism.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotificationDeliveryMechanism value: $value');
  }
}
