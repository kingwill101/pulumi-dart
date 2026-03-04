/// A flag to determine whether or not LdapSigning is enabled or disabled.
enum LdapSigning {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const LdapSigning(this.wireValue);
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
