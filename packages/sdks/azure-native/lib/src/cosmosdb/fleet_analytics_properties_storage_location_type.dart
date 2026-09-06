import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the fleet analytics resource.
enum FleetAnalyticsPropertiesStorageLocationType implements pulumi.PulumiEnum<String> {
  storageAccount("StorageAccount"),
  fabricLakehouse("FabricLakehouse");

  const FleetAnalyticsPropertiesStorageLocationType(this.wireValue);
  @override
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
