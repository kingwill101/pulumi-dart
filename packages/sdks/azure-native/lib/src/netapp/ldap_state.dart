/// Specifies whether LDAP is enabled or not for flexcache volume.
enum LdapState {
  disabled("Disabled"),
  enabled("Enabled");

  const LdapState(this.wireValue);
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
