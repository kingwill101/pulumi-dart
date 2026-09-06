import 'package:pulumi/pulumi.dart' as pulumi;

/// Source platform for the project
enum ProjectSourcePlatform implements pulumi.PulumiEnum<String> {
  valueSQL("SQL"),
  valueMySQL("MySQL"),
  valuePostgreSql("PostgreSql"),
  valueMongoDb("MongoDb"),
  valueUnknown("Unknown");

  const ProjectSourcePlatform(this.wireValue);
  @override
  final String wireValue;

  static ProjectSourcePlatform fromValue(String value) {
    for (final item in ProjectSourcePlatform.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProjectSourcePlatform value: $value');
  }
}
