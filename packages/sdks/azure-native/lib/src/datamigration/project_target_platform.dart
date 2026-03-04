/// Target platform for the project
enum ProjectTargetPlatform {
  valueSQLDB("SQLDB"),
  valueSQLMI("SQLMI"),
  valueAzureDbForMySql("AzureDbForMySql"),
  valueAzureDbForPostgreSql("AzureDbForPostgreSql"),
  valueMongoDb("MongoDb"),
  valueUnknown("Unknown");

  const ProjectTargetPlatform(this.wireValue);
  final String wireValue;

  static ProjectTargetPlatform fromValue(String value) {
    for (final item in ProjectTargetPlatform.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProjectTargetPlatform value: $value');
  }
}
