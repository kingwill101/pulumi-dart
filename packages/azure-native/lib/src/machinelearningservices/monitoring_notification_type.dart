enum MonitoringNotificationType {
  valueAmlNotification("AmlNotification");

  const MonitoringNotificationType(this.value);
  final String value;

  static MonitoringNotificationType fromValue(String value) {
    for (final item in MonitoringNotificationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MonitoringNotificationType value: $value');
  }
}

