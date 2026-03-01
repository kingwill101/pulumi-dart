/// DataResidencyType enum
enum DataResidencyType {
  valueGeoZoneReplication("GeoZoneReplication"),
  valueZoneReplication("ZoneReplication");

  const DataResidencyType(this.value);
  final String value;

  static DataResidencyType fromValue(String value) {
    for (final item in DataResidencyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataResidencyType value: $value');
  }
}

