/// The type used for authentication. Type: string.
enum AzureStorageAuthenticationType {
  valueAnonymous("Anonymous"),
  valueAccountKey("AccountKey"),
  valueSasUri("SasUri"),
  valueServicePrincipal("ServicePrincipal"),
  valueMsi("Msi");

  const AzureStorageAuthenticationType(this.value);
  final String value;

  static AzureStorageAuthenticationType fromValue(String value) {
    for (final item in AzureStorageAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureStorageAuthenticationType value: $value');
  }
}

