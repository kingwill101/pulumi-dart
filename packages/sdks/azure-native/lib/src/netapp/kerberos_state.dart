/// Describe if a cache is Kerberos enabled.
enum KerberosState {
  disabled("Disabled"),
  enabled("Enabled");

  const KerberosState(this.wireValue);
  final String wireValue;

  static KerberosState fromValue(String value) {
    for (final item in KerberosState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KerberosState value: $value');
  }
}
