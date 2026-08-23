/// The type of the fleet analytics resource.
enum FleetAnalyticsPropertiesStorageLocationType {
  storageAccount("StorageAccount"),
  fabricLakehouse("FabricLakehouse");

  const FleetAnalyticsPropertiesStorageLocationType(this.wireValue);
  final String wireValue;

  static FleetAnalyticsPropertiesStorageLocationType fromValue(String value) {
    for (final item in FleetAnalyticsPropertiesStorageLocationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FleetAnalyticsPropertiesStorageLocationType value: $value');
  }
}
