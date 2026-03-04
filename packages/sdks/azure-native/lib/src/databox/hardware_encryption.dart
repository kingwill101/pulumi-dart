/// Defines Hardware level encryption (Only for disk)
enum HardwareEncryption {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const HardwareEncryption(this.wireValue);
  final String wireValue;

  static HardwareEncryption fromValue(String value) {
    for (final item in HardwareEncryption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HardwareEncryption value: $value');
  }
}
