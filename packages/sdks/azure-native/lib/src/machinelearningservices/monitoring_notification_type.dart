enum MonitoringNotificationType {
  amlNotification("AmlNotification");

  const MonitoringNotificationType(this.wireValue);
  final String wireValue;

  static MonitoringNotificationType fromValue(String value) {
    for (final item in MonitoringNotificationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MonitoringNotificationType value: $value');
  }
}
