/// Mode of TLS server certificate management.
enum TlsCertMethodMode {
  automatic("Automatic"),
  manual("Manual");

  const TlsCertMethodMode(this.value);
  final String value;

  static TlsCertMethodMode fromValue(String value) {
    for (final item in TlsCertMethodMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TlsCertMethodMode value: $value');
  }
}

