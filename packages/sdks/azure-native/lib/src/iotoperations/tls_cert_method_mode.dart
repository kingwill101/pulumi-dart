/// Mode of TLS server certificate management.
enum TlsCertMethodMode {
  automatic("Automatic"),
  manual("Manual");

  const TlsCertMethodMode(this.wireValue);
  final String wireValue;

  static TlsCertMethodMode fromValue(String value) {
    for (final item in TlsCertMethodMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TlsCertMethodMode value: $value');
  }
}
