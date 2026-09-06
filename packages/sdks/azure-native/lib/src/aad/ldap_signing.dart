import 'package:pulumi/pulumi.dart' as pulumi;

/// A flag to determine whether or not LdapSigning is enabled or disabled.
enum LdapSigning implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const LdapSigning(this.wireValue);
  @override
  final String wireValue;

  static LdapSigning fromValue(String value) {
    for (final item in LdapSigning.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LdapSigning value: $value');
  }
}
