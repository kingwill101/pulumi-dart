/// The type of the secret resource.
enum SecretType {
  urlSigningKey("UrlSigningKey"),
  customerCertificate("CustomerCertificate"),
  managedCertificate("ManagedCertificate"),
  azureFirstPartyManagedCertificate("AzureFirstPartyManagedCertificate");

  const SecretType(this.wireValue);
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
