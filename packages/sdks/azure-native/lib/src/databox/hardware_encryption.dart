/// Defines Hardware level encryption (Only for disk)
enum HardwareEncryption {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const HardwareEncryption(this.value);
  final String value;

  static HardwareEncryption fromValue(String value) {
    for (final item in HardwareEncryption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HardwareEncryption value: $value');
  }
}

