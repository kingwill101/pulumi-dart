enum TokenCertificateName {
  valueCertificate1("certificate1"),
  valueCertificate2("certificate2");

  const TokenCertificateName(this.value);
  final String value;

  static TokenCertificateName fromValue(String value) {
    for (final item in TokenCertificateName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TokenCertificateName value: $value');
  }
}

