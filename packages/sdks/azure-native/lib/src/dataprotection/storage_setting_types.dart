/// Gets or sets the type.
enum StorageSettingTypes {
  valueGeoRedundant("GeoRedundant"),
  valueLocallyRedundant("LocallyRedundant"),
  valueZoneRedundant("ZoneRedundant");

  const StorageSettingTypes(this.wireValue);
  final String wireValue;

  static StorageSettingTypes fromValue(String value) {
    for (final item in StorageSettingTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageSettingTypes value: $value');
  }
}
