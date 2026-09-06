import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines Hardware level encryption (Only for disk)
enum HardwareEncryption implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const HardwareEncryption(this.wireValue);
  @override
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
