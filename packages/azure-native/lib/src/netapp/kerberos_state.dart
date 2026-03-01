/// Describe if a cache is Kerberos enabled.
enum KerberosState {
  disabled("Disabled"),
  enabled("Enabled");

  const KerberosState(this.value);
  final String value;

  static KerberosState fromValue(String value) {
    for (final item in KerberosState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KerberosState value: $value');
  }
}

