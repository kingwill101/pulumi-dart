/// The type of single sign on Secret Type.
enum SSOSecretType {
  valueSharedKey("SharedKey"),
  valueCertificate("Certificate"),
  valueSharedKeyInKeyVault("SharedKeyInKeyVault"),
  valueCertificateInKeyVault("CertificateInKeyVault");

  const SSOSecretType(this.value);
  final String value;

  static SSOSecretType fromValue(String value) {
    for (final item in SSOSecretType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SSOSecretType value: $value');
  }
}

