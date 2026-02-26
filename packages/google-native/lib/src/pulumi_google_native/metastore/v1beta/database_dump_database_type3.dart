/// The type of the database.
enum DatabaseDumpDatabaseType3 {
  databaseTypeUnspecified("DATABASE_TYPE_UNSPECIFIED"),
  mysql("MYSQL");

  const DatabaseDumpDatabaseType3(this.value);
  final String value;

  static DatabaseDumpDatabaseType3 fromValue(String value) {
    for (final item in DatabaseDumpDatabaseType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseDumpDatabaseType3 value: $value');
  }
}
