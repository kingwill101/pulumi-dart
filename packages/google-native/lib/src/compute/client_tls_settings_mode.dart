/// Indicates whether connections to this port should be secured using TLS. The value of this field determines how TLS is enforced. This can be set to one of the following values: DISABLE: Do not setup a TLS connection to the backends. SIMPLE: Originate a TLS connection to the backends. MUTUAL: Secure connections to the backends using mutual TLS by presenting client certificates for authentication.
enum ClientTlsSettingsMode {
  disable("DISABLE"),
  invalid("INVALID"),
  mutual("MUTUAL"),
  simple("SIMPLE");

  const ClientTlsSettingsMode(this.value);
  final String value;

  static ClientTlsSettingsMode fromValue(String value) {
    for (final item in ClientTlsSettingsMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClientTlsSettingsMode value: $value');
  }
}
