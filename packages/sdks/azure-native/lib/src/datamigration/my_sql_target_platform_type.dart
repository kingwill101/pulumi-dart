/// Target Platform for the migration
enum MySqlTargetPlatformType {
  valueSqlServer("SqlServer"),
  valueAzureDbForMySQL("AzureDbForMySQL");

  const MySqlTargetPlatformType(this.value);
  final String value;

  static MySqlTargetPlatformType fromValue(String value) {
    for (final item in MySqlTargetPlatformType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MySqlTargetPlatformType value: $value');
  }
}

