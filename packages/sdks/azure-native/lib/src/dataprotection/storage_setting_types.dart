import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the type.
enum StorageSettingTypes implements pulumi.PulumiEnum<String> {
  valueGeoRedundant("GeoRedundant"),
  valueLocallyRedundant("LocallyRedundant"),
  valueZoneRedundant("ZoneRedundant");

  const StorageSettingTypes(this.wireValue);
  @override
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
