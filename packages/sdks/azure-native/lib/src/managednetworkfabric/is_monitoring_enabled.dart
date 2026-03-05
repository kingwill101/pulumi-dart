/// To check whether monitoring of internal network is enabled or not.
enum IsMonitoringEnabled {
  valueTrue("True"),
  valueFalse("False");

  const IsMonitoringEnabled(this.wireValue);
  final String wireValue;

  static IsMonitoringEnabled fromValue(String value) {
    for (final item in IsMonitoringEnabled.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IsMonitoringEnabled value: $value');
  }
}

