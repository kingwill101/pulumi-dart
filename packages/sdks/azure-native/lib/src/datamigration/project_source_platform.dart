/// Source platform for the project
enum ProjectSourcePlatform {
  valueSQL("SQL"),
  valueMySQL("MySQL"),
  valuePostgreSql("PostgreSql"),
  valueMongoDb("MongoDb"),
  valueUnknown("Unknown");

  const ProjectSourcePlatform(this.value);
  final String value;

  static ProjectSourcePlatform fromValue(String value) {
    for (final item in ProjectSourcePlatform.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProjectSourcePlatform value: $value');
  }
}

