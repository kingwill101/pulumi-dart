import 'package:pulumi/pulumi.dart' as pulumi;

/// The mode to create a new server.
enum CreateMode implements pulumi.PulumiEnum<String> {
  valueDefault("Default"),
  valuePointInTimeRestore("PointInTimeRestore"),
  valueGeoRestore("GeoRestore"),
  valueReplica("Replica");

  const CreateMode(this.wireValue);
  @override
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
