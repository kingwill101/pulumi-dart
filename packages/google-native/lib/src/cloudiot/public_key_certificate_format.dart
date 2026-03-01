/// The certificate format.
enum PublicKeyCertificateFormat {
  unspecifiedPublicKeyCertificateFormat(
    "UNSPECIFIED_PUBLIC_KEY_CERTIFICATE_FORMAT",
  ),
  x509CertificatePem("X509_CERTIFICATE_PEM");

  const PublicKeyCertificateFormat(this.value);
  final String value;

  static PublicKeyCertificateFormat fromValue(String value) {
    for (final item in PublicKeyCertificateFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicKeyCertificateFormat value: $value');
  }
}
