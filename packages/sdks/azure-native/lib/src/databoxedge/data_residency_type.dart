import 'package:pulumi/pulumi.dart' as pulumi;

/// DataResidencyType enum
enum DataResidencyType implements pulumi.PulumiEnum<String> {
  valueGeoZoneReplication("GeoZoneReplication"),
  valueZoneReplication("ZoneReplication");

  const DataResidencyType(this.wireValue);
  @override
  final String wireValue;

  static DataResidencyType fromValue(String value) {
    for (final item in DataResidencyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataResidencyType value: $value');
  }
}
