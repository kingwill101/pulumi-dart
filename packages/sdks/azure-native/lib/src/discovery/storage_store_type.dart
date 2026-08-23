/// The storage store kind.
enum StorageStoreType {
  azureStorageBlob("AzureStorageBlob"),
  azureNetAppFiles("AzureNetAppFiles");

  const StorageStoreType(this.wireValue);
  final String wireValue;

  static StorageStoreType fromValue(String value) {
    for (final item in StorageStoreType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageStoreType value: $value');
  }
}
