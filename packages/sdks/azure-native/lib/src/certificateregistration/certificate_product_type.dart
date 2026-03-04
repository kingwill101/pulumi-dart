/// Certificate product type.
enum CertificateProductType {
  valueStandardDomainValidatedSsl("StandardDomainValidatedSsl"),
  valueStandardDomainValidatedWildCardSsl("StandardDomainValidatedWildCardSsl");

  const CertificateProductType(this.wireValue);
  final String wireValue;

  static CertificateProductType fromValue(String value) {
    for (final item in CertificateProductType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateProductType value: $value');
  }
}
