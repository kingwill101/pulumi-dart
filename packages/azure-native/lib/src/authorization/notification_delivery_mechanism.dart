/// The type of notification.
enum NotificationDeliveryMechanism {
  valueEmail("Email");

  const NotificationDeliveryMechanism(this.value);
  final String value;

  static NotificationDeliveryMechanism fromValue(String value) {
    for (final item in NotificationDeliveryMechanism.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotificationDeliveryMechanism value: $value');
  }
}

