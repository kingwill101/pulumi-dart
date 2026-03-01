/// The key type, AzureKeyVault for enable cmk, SystemManaged for disable cmk.
enum DataEncryptionType {
  valueAzureKeyVault("AzureKeyVault"),
  valueSystemManaged("SystemManaged");

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

