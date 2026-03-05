/// The mode to create a new server.
enum SingleServerCreateMode {
  valueDefault("Default"),
  valuePointInTimeRestore("PointInTimeRestore"),
  valueGeoRestore("GeoRestore"),
  valueReplica("Replica");

  const SingleServerCreateMode(this.wireValue);
  final String wireValue;

  static SingleServerCreateMode fromValue(String value) {
    for (final item in SingleServerCreateMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SingleServerCreateMode value: $value');
  }
}

