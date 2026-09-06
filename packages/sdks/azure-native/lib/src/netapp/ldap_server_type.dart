import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the type of LDAP server for flexcache volume.
enum LdapServerType implements pulumi.PulumiEnum<String> {
  activeDirectory("ActiveDirectory"),
  openLDAP("OpenLDAP");

  const LdapServerType(this.wireValue);
  @override
  final String wireValue;

  static LdapServerType fromValue(String value) {
    for (final item in LdapServerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LdapServerType value: $value');
  }
}
