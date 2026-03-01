/// Specifies the type of LDAP server for flexcache volume.
enum LdapServerType {
  activeDirectory("ActiveDirectory"),
  openLDAP("OpenLDAP");

  const LdapServerType(this.value);
  final String value;

  static LdapServerType fromValue(String value) {
    for (final item in LdapServerType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LdapServerType value: $value');
  }
}

