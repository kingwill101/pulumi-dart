/// A flag to determine whether or not SyncKerberosPasswords is enabled or disabled.
enum SyncKerberosPasswords {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const SyncKerberosPasswords(this.value);
  final String value;

  static SyncKerberosPasswords fromValue(String value) {
    for (final item in SyncKerberosPasswords.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SyncKerberosPasswords value: $value');
  }
}

