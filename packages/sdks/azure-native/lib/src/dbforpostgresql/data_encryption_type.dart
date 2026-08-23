enum DataEncryptionType {
  azureKeyVault("AzureKeyVault"),
  systemAssigned("SystemAssigned");

  const DataEncryptionType(this.wireValue);
  final String wireValue;

  static DataEncryptionType fromValue(String value) {
    for (final item in DataEncryptionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataEncryptionType value: $value');
  }
}
