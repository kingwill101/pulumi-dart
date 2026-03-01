enum DataEncryptionType {
  azureKeyVault("AzureKeyVault"),
  systemAssigned("SystemAssigned");

  const DataEncryptionType(this.value);
  final String value;

  static DataEncryptionType fromValue(String value) {
    for (final item in DataEncryptionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataEncryptionType value: $value');
  }
}

