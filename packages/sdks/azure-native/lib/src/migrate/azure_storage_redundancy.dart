import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the Azure Storage Redundancy. Example: Locally Redundant Storage.
enum AzureStorageRedundancy implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  locallyRedundant("LocallyRedundant"),
  zoneRedundant("ZoneRedundant"),
  geoRedundant("GeoRedundant"),
  readAccessGeoRedundant("ReadAccessGeoRedundant");

  const AzureStorageRedundancy(this.wireValue);
  @override
  final String wireValue;

  static AzureStorageRedundancy fromValue(String value) {
    for (final item in AzureStorageRedundancy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureStorageRedundancy value: $value');
  }
}
