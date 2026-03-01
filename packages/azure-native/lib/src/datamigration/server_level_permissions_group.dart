/// Permission group for validations
enum ServerLevelPermissionsGroup {
  valueDefault("Default"),
  valueMigrationFromSqlServerToAzureDB("MigrationFromSqlServerToAzureDB"),
  valueMigrationFromSqlServerToAzureMI("MigrationFromSqlServerToAzureMI"),
  valueMigrationFromMySQLToAzureDBForMySQL("MigrationFromMySQLToAzureDBForMySQL"),
  valueMigrationFromSqlServerToAzureVM("MigrationFromSqlServerToAzureVM");

  const ServerLevelPermissionsGroup(this.value);
  final String value;

  static ServerLevelPermissionsGroup fromValue(String value) {
    for (final item in ServerLevelPermissionsGroup.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerLevelPermissionsGroup value: $value');
  }
}

