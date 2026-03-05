/// DataResidencyType enum
enum DataResidencyType {
  valueGeoZoneReplication("GeoZoneReplication"),
  valueZoneReplication("ZoneReplication");

  const DataResidencyType(this.wireValue);
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

