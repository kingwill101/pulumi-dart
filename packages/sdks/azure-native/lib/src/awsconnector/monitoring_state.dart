/// Property value
enum MonitoringState {
  disabled("disabled"),
  disabling("disabling"),
  enabled("enabled"),
  pending("pending");

  const MonitoringState(this.value);
  final String value;

  static MonitoringState fromValue(String value) {
    for (final item in MonitoringState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MonitoringState value: $value');
  }
}

