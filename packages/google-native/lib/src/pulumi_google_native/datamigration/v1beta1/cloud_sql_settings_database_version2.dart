/// The database engine type and version.
enum CloudSqlSettingsDatabaseVersion2 {
  sqlDatabaseVersionUnspecified("SQL_DATABASE_VERSION_UNSPECIFIED"),
  mysql56("MYSQL_5_6"),
  mysql57("MYSQL_5_7"),
  mysql80("MYSQL_8_0");

  const CloudSqlSettingsDatabaseVersion2(this.value);
  final String value;

  static CloudSqlSettingsDatabaseVersion2 fromValue(String value) {
    for (final item in CloudSqlSettingsDatabaseVersion2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown CloudSqlSettingsDatabaseVersion2 value: $value');
  }
}
