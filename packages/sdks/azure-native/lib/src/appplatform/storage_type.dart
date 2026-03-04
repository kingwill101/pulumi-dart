/// The type of the storage.
enum StorageType {
  valueStorageAccount("StorageAccount");

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
