/// A flag to determine whether or not Secure LDAP is enabled or disabled.
enum Ldaps {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const Ldaps(this.wireValue);
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
