import 'package:pulumi/pulumi.dart' as pulumi;

/// The mode to create a mongo cluster.
enum MongoClusterCreateMode implements pulumi.PulumiEnum<String> {
  valueDefault("Default"),
  valuePointInTimeRestore("PointInTimeRestore");

  const MongoClusterCreateMode(this.wireValue);
  @override
  final String wireValue;

  static MongoClusterCreateMode fromValue(String value) {
    for (final item in MongoClusterCreateMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MongoClusterCreateMode value: $value');
  }
}
