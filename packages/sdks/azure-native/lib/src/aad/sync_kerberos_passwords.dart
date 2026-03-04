/// A flag to determine whether or not SyncKerberosPasswords is enabled or disabled.
enum SyncKerberosPasswords {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const SyncKerberosPasswords(this.wireValue);
  final String wireValue;

  static SyncKerberosPasswords fromValue(String value) {
    for (final item in SyncKerberosPasswords.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SyncKerberosPasswords value: $value');
  }
}
