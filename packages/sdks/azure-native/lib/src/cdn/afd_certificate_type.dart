import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the source of the SSL certificate.
enum AfdCertificateType implements pulumi.PulumiEnum<String> {
  customerCertificate("CustomerCertificate"),
  managedCertificate("ManagedCertificate"),
  azureFirstPartyManagedCertificate("AzureFirstPartyManagedCertificate");

  const AfdCertificateType(this.wireValue);
  @override
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
