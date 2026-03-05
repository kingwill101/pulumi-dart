/// Storage type for the volume. If not provided, use EmptyDir.
enum StorageType {
  valueAzureFile("AzureFile"),
  valueEmptyDir("EmptyDir"),
  valueSecret("Secret"),
  valueNfsAzureFile("NfsAzureFile"),
  valueSmb("Smb");

  const StorageType(this.wireValue);
  final String wireValue;

  static StorageType fromValue(String value) {
    for (final item in StorageType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageType value: $value');
  }
}

