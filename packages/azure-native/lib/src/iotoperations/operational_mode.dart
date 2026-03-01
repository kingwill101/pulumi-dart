/// Disk persistence mode.
enum OperationalMode {
  enabled("Enabled"),
  disabled("Disabled");

  const OperationalMode(this.value);
  final String value;

  static OperationalMode fromValue(String value) {
    for (final item in OperationalMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperationalMode value: $value');
  }
}

