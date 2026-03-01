/// The mode to create a new server.
enum CreateMode {
  valueDefault("Default"),
  valuePointInTimeRestore("PointInTimeRestore"),
  valueGeoRestore("GeoRestore"),
  valueReplica("Replica");

  const CreateMode(this.value);
  final String value;

  static CreateMode fromValue(String value) {
    for (final item in CreateMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CreateMode value: $value');
  }
}

