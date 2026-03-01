/// The type of the fleet analytics resource.
enum StorageLocationType {
  valueStorageAccount("StorageAccount"),
  valueFabricLakehouse("FabricLakehouse");

  const StorageLocationType(this.value);
  final String value;

  static StorageLocationType fromValue(String value) {
    for (final item in StorageLocationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageLocationType value: $value');
  }
}

