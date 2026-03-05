/// Source platform for the project
enum ProjectSourcePlatform {
  valueSQL("SQL"),
  valueMySQL("MySQL"),
  valuePostgreSql("PostgreSql"),
  valueMongoDb("MongoDb"),
  valueUnknown("Unknown");

  const ProjectSourcePlatform(this.wireValue);
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

