/// A flag to determine whether or not LdapSigning is enabled or disabled.
enum LdapSigning {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const LdapSigning(this.value);
  final String value;

  static LdapSigning fromValue(String value) {
    for (final item in LdapSigning.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LdapSigning value: $value');
  }
}

