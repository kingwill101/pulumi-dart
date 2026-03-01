/// Certificate product type.
enum CertificateProductType {
  valueStandardDomainValidatedSsl("StandardDomainValidatedSsl"),
  valueStandardDomainValidatedWildCardSsl("StandardDomainValidatedWildCardSsl");

  const CertificateProductType(this.value);
  final String value;

  static CertificateProductType fromValue(String value) {
    for (final item in CertificateProductType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateProductType value: $value');
  }
}

