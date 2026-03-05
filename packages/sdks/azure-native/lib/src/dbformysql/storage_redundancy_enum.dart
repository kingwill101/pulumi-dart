/// The redundant type of the server storage. The parameter is used for server creation.
enum StorageRedundancyEnum {
  valueLocalRedundancy("LocalRedundancy"),
  valueZoneRedundancy("ZoneRedundancy");

  const StorageRedundancyEnum(this.wireValue);
  final String wireValue;

  static StorageRedundancyEnum fromValue(String value) {
    for (final item in StorageRedundancyEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageRedundancyEnum value: $value');
  }
}

