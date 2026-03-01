/// Defines the source of the SSL certificate.
enum AfdCertificateType {
  customerCertificate("CustomerCertificate"),
  managedCertificate("ManagedCertificate"),
  azureFirstPartyManagedCertificate("AzureFirstPartyManagedCertificate");

  const AfdCertificateType(this.value);
  final String value;

  static AfdCertificateType fromValue(String value) {
    for (final item in AfdCertificateType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AfdCertificateType value: $value');
  }
}

