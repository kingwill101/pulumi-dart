/// The notification level.
enum NotificationLevel {
  none("None"),
  critical("Critical"),
  all("All");

  const NotificationLevel(this.wireValue);
  final String wireValue;

  static NotificationLevel fromValue(String value) {
    for (final item in NotificationLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotificationLevel value: $value');
  }
}
