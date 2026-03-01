/// Specifies whether LDAP is enabled or not for flexcache volume.
enum LdapState {
  disabled("Disabled"),
  enabled("Enabled");

  const LdapState(this.value);
  final String value;

  static LdapState fromValue(String value) {
    for (final item in LdapState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LdapState value: $value');
  }
}

