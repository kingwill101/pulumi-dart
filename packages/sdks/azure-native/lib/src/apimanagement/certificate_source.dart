/// Certificate Source.
enum CertificateSource {
  valueManaged("Managed"),
  valueKeyVault("KeyVault"),
  valueCustom("Custom"),
  valueBuiltIn("BuiltIn");

  const CertificateSource(this.wireValue);
  final String wireValue;

  static CertificateSource fromValue(String value) {
    for (final item in CertificateSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateSource value: $value');
  }
}
