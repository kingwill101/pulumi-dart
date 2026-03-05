/// The mode to create a mongo cluster.
enum CreateMode {
  default_("Default"),
  pointInTimeRestore("PointInTimeRestore"),
  geoReplica("GeoReplica"),
  replica("Replica");

  const CreateMode(this.wireValue);
  final String wireValue;

  static CreateMode fromValue(String value) {
    for (final item in CreateMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CreateMode value: $value');
  }
}

