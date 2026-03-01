/// Flag specifying if the resource monitoring is enabled or disabled.
enum MonitoringStatus {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const MonitoringStatus(this.value);
  final String value;

  static MonitoringStatus fromValue(String value) {
    for (final item in MonitoringStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MonitoringStatus value: $value');
  }
}

