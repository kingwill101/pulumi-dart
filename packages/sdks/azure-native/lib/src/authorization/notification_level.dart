/// The notification level.
enum NotificationLevel {
  valueNone("None"),
  valueCritical("Critical"),
  valueAll("All");

  const NotificationLevel(this.value);
  final String value;

  static NotificationLevel fromValue(String value) {
    for (final item in NotificationLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotificationLevel value: $value');
  }
}

