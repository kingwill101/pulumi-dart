/// Permission group for validations
enum ServerLevelPermissionsGroup {
  valueDefault("Default"),
  valueMigrationFromSqlServerToAzureDB("MigrationFromSqlServerToAzureDB"),
  valueMigrationFromSqlServerToAzureMI("MigrationFromSqlServerToAzureMI"),
  valueMigrationFromMySQLToAzureDBForMySQL(
    "MigrationFromMySQLToAzureDBForMySQL",
  ),
  valueMigrationFromSqlServerToAzureVM("MigrationFromSqlServerToAzureVM");

  const ServerLevelPermissionsGroup(this.wireValue);
  final String wireValue;

  static ServerLevelPermissionsGroup fromValue(String value) {
    for (final item in ServerLevelPermissionsGroup.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerLevelPermissionsGroup value: $value');
  }
}
