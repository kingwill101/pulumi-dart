/// Defines secondary layer of software-based encryption enablement.
enum DoubleEncryption {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const DoubleEncryption(this.value);
  final String value;

  static DoubleEncryption fromValue(String value) {
    for (final item in DoubleEncryption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DoubleEncryption value: $value');
  }
}

