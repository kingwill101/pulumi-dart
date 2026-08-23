/// Creation mode of a new server.
enum CreateMode {
  default_("Default"),
  create("Create"),
  update("Update"),
  pointInTimeRestore("PointInTimeRestore"),
  geoRestore("GeoRestore"),
  replica("Replica"),
  reviveDropped("ReviveDropped");

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
