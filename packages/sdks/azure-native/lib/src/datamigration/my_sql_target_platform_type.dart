/// Target Platform for the migration
enum MySqlTargetPlatformType {
  valueSqlServer("SqlServer"),
  valueAzureDbForMySQL("AzureDbForMySQL");

  const MySqlTargetPlatformType(this.wireValue);
  final String wireValue;

  static MySqlTargetPlatformType fromValue(String value) {
    for (final item in MySqlTargetPlatformType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MySqlTargetPlatformType value: $value');
  }
}
