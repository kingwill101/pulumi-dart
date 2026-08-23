enum TokenCertificateName {
  valueCertificate1("certificate1"),
  valueCertificate2("certificate2");

  const TokenCertificateName(this.wireValue);
  final String wireValue;

  static TokenCertificateName fromValue(String value) {
    for (final item in TokenCertificateName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TokenCertificateName value: $value');
  }
}
