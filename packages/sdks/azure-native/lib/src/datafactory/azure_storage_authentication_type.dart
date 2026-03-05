/// The type used for authentication. Type: string.
enum AzureStorageAuthenticationType {
  valueAnonymous("Anonymous"),
  valueAccountKey("AccountKey"),
  valueSasUri("SasUri"),
  valueServicePrincipal("ServicePrincipal"),
  valueMsi("Msi");

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

