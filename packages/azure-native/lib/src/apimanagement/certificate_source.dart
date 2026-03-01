/// Certificate Source.
enum CertificateSource {
  valueManaged("Managed"),
  valueKeyVault("KeyVault"),
  valueCustom("Custom"),
  valueBuiltIn("BuiltIn");

  const CertificateSource(this.value);
  final String value;

  static CertificateSource fromValue(String value) {
    for (final item in CertificateSource.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateSource value: $value');
  }
}

