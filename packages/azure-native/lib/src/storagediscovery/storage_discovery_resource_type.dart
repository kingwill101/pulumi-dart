/// Storage Discovery Resource Type
enum StorageDiscoveryResourceType {
  storageAccounts("Microsoft.Storage/storageAccounts");

  const StorageDiscoveryResourceType(this.value);
  final String value;

  static StorageDiscoveryResourceType fromValue(String value) {
    for (final item in StorageDiscoveryResourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageDiscoveryResourceType value: $value');
  }
}

