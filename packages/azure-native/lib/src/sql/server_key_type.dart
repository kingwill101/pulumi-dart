/// The server key type like 'ServiceManaged', 'AzureKeyVault'.
enum ServerKeyType {
  valueServiceManaged("ServiceManaged"),
  valueAzureKeyVault("AzureKeyVault");

  const ServerKeyType(this.value);
  final String value;

  static ServerKeyType fromValue(String value) {
    for (final item in ServerKeyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerKeyType value: $value');
  }
}

