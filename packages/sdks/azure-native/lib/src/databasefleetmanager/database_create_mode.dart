import 'package:pulumi/pulumi.dart' as pulumi;

/// Create mode. Available options: Default - Create a database. Copy - Copy the source database (source database name must be specified) PointInTimeRestore - Create a database by restoring source database from a point in time (source database name and restore from time must be specified)
enum DatabaseCreateMode implements pulumi.PulumiEnum<String> {
  default_("Default"),
  copy("Copy"),
  pointInTimeRestore("PointInTimeRestore");

  const DatabaseCreateMode(this.wireValue);
  @override
  final String wireValue;

  static DatabaseCreateMode fromValue(String value) {
    for (final item in DatabaseCreateMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseCreateMode value: $value');
  }
}
