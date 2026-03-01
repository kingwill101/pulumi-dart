/// A flag to determine whether or not Secure LDAP access over the internet is enabled or disabled.
enum ExternalAccess {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ExternalAccess(this.value);
  final String value;

  static ExternalAccess fromValue(String value) {
    for (final item in ExternalAccess.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExternalAccess value: $value');
  }
}

