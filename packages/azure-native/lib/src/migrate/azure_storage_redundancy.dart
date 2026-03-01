/// Gets or sets the Azure Storage Redundancy. Example: Locally Redundant Storage.
enum AzureStorageRedundancy {
  unknown("Unknown"),
  locallyRedundant("LocallyRedundant"),
  zoneRedundant("ZoneRedundant"),
  geoRedundant("GeoRedundant"),
  readAccessGeoRedundant("ReadAccessGeoRedundant");

  const AzureStorageRedundancy(this.value);
  final String value;

  static AzureStorageRedundancy fromValue(String value) {
    for (final item in AzureStorageRedundancy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureStorageRedundancy value: $value');
  }
}

