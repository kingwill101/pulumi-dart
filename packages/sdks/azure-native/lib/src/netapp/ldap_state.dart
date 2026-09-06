import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies whether LDAP is enabled or not for flexcache volume.
enum LdapState implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  enabled("Enabled");

  const LdapState(this.wireValue);
  @override
  final String wireValue;

  static LdapState fromValue(String value) {
    for (final item in LdapState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LdapState value: $value');
  }
}
