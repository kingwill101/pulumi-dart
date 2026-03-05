/// Type of notification to be sent.
enum NotificationType {
  email("Email");

  const NotificationType(this.wireValue);
  final String wireValue;

  static NotificationType fromValue(String value) {
    for (final item in NotificationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotificationType value: $value');
  }
}

