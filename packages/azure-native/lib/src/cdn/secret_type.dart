/// The type of the secret resource.
enum SecretType {
  urlSigningKey("UrlSigningKey"),
  customerCertificate("CustomerCertificate"),
  managedCertificate("ManagedCertificate"),
  azureFirstPartyManagedCertificate("AzureFirstPartyManagedCertificate");

  const SecretType(this.value);
  final String value;

  static SecretType fromValue(String value) {
    for (final item in SecretType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecretType value: $value');
  }
}

