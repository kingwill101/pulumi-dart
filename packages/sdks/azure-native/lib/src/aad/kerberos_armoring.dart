import 'package:pulumi/pulumi.dart' as pulumi;

/// A flag to determine whether or not KerberosArmoring is enabled or disabled.
enum KerberosArmoring implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const KerberosArmoring(this.wireValue);
  @override
  final String wireValue;

  static KerberosArmoring fromValue(String value) {
    for (final item in KerberosArmoring.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KerberosArmoring value: $value');
  }
}
