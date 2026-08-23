/// Defines the source of the SSL certificate.
enum AfdCertificateType {
  customerCertificate("CustomerCertificate"),
  managedCertificate("ManagedCertificate"),
  azureFirstPartyManagedCertificate("AzureFirstPartyManagedCertificate");

  const AfdCertificateType(this.wireValue);
  final String wireValue;

  static AfdCertificateType fromValue(String value) {
    for (final item in AfdCertificateType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AfdCertificateType value: $value');
  }
}
