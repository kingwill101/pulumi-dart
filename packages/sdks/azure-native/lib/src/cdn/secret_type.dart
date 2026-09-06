import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the secret resource.
enum SecretType implements pulumi.PulumiEnum<String> {
  urlSigningKey("UrlSigningKey"),
  customerCertificate("CustomerCertificate"),
  managedCertificate("ManagedCertificate"),
  azureFirstPartyManagedCertificate("AzureFirstPartyManagedCertificate");

  const SecretType(this.wireValue);
  @override
  final String wireValue;

  static SecretType fromValue(String value) {
    for (final item in SecretType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecretType value: $value');
  }
}
