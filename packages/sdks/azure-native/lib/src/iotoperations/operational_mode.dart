/// Disk persistence mode.
enum OperationalMode {
  enabled("Enabled"),
  disabled("Disabled");

  const OperationalMode(this.wireValue);
  final String wireValue;

  static OperationalMode fromValue(String value) {
    for (final item in OperationalMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperationalMode value: $value');
  }
}

