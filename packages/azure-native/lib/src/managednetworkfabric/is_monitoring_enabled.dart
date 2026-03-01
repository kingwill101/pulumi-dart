/// To check whether monitoring of internal network is enabled or not.
enum IsMonitoringEnabled {
  valueTrue("True"),
  valueFalse("False");

  const IsMonitoringEnabled(this.value);
  final String value;

  static IsMonitoringEnabled fromValue(String value) {
    for (final item in IsMonitoringEnabled.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IsMonitoringEnabled value: $value');
  }
}

