/// Specifies the type of LDAP server for flexcache volume.
enum LdapServerType {
  activeDirectory("ActiveDirectory"),
  openLDAP("OpenLDAP");

  const LdapServerType(this.wireValue);
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

