import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines secondary layer of software-based encryption enablement.
enum DoubleEncryption implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const DoubleEncryption(this.wireValue);
  @override
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
