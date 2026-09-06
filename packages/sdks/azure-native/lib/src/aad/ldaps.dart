import 'package:pulumi/pulumi.dart' as pulumi;

/// A flag to determine whether or not Secure LDAP is enabled or disabled.
enum Ldaps implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const Ldaps(this.wireValue);
  @override
  final String wireValue;

  static Ldaps fromValue(String value) {
    for (final item in Ldaps.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Ldaps value: $value');
  }
}
