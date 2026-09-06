import 'package:pulumi/pulumi.dart' as pulumi;

/// The mode to create a new server.
enum SingleServerCreateMode implements pulumi.PulumiEnum<String> {
  valueDefault("Default"),
  valuePointInTimeRestore("PointInTimeRestore"),
  valueGeoRestore("GeoRestore"),
  valueReplica("Replica");

  const SingleServerCreateMode(this.wireValue);
  @override
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
