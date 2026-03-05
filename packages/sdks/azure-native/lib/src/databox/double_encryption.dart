/// Defines secondary layer of software-based encryption enablement.
enum DoubleEncryption {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const DoubleEncryption(this.wireValue);
  final String wireValue;

  static DoubleEncryption fromValue(String value) {
    for (final item in DoubleEncryption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DoubleEncryption value: $value');
  }
}

