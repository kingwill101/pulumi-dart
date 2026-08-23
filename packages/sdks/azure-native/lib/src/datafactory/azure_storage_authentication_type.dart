/// The type used for authentication. Type: string.
enum AzureStorageAuthenticationType {
  anonymous("Anonymous"),
  accountKey("AccountKey"),
  sasUri("SasUri"),
  servicePrincipal("ServicePrincipal"),
  msi("Msi");

  const AzureStorageAuthenticationType(this.wireValue);
  final String wireValue;

  static AzureStorageAuthenticationType fromValue(String value) {
    for (final item in AzureStorageAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureStorageAuthenticationType value: $value');
  }
}
