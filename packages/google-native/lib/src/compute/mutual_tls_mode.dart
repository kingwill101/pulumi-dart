/// Specifies if the server TLS is configured to be strict or permissive. This field can be set to one of the following: STRICT: Client certificate must be presented, connection is in TLS. PERMISSIVE: Client certificate can be omitted, connection can be either plaintext or TLS.
enum MutualTlsMode {
  invalid("INVALID"),
  permissive("PERMISSIVE"),
  strict("STRICT");

  const MutualTlsMode(this.value);
  final String value;

  static MutualTlsMode fromValue(String value) {
    for (final item in MutualTlsMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MutualTlsMode value: $value');
  }
}

