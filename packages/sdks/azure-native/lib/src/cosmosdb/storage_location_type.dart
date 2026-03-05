/// The type of the fleet analytics resource.
enum StorageLocationType {
  valueStorageAccount("StorageAccount"),
  valueFabricLakehouse("FabricLakehouse");

  const StorageLocationType(this.wireValue);
  final String wireValue;

  static StorageLocationType fromValue(String value) {
    for (final item in StorageLocationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageLocationType value: $value');
  }
}

