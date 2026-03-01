/// Target platform for the project
enum ProjectTargetPlatform {
  valueSQLDB("SQLDB"),
  valueSQLMI("SQLMI"),
  valueAzureDbForMySql("AzureDbForMySql"),
  valueAzureDbForPostgreSql("AzureDbForPostgreSql"),
  valueMongoDb("MongoDb"),
  valueUnknown("Unknown");

  const ProjectTargetPlatform(this.value);
  final String value;

  static ProjectTargetPlatform fromValue(String value) {
    for (final item in ProjectTargetPlatform.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProjectTargetPlatform value: $value');
  }
}

