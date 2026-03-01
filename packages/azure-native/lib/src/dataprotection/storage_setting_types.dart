/// Gets or sets the type.
enum StorageSettingTypes {
  valueGeoRedundant("GeoRedundant"),
  valueLocallyRedundant("LocallyRedundant"),
  valueZoneRedundant("ZoneRedundant");

  const StorageSettingTypes(this.value);
  final String value;

  static StorageSettingTypes fromValue(String value) {
    for (final item in StorageSettingTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageSettingTypes value: $value');
  }
}

