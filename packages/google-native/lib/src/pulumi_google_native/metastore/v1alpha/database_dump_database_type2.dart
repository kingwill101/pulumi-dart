/// The type of the database.
enum DatabaseDumpDatabaseType2 {
  databaseTypeUnspecified("DATABASE_TYPE_UNSPECIFIED"),
  mysql("MYSQL");

  const DatabaseDumpDatabaseType2(this.value);
  final String value;

  static DatabaseDumpDatabaseType2 fromValue(String value) {
    for (final item in DatabaseDumpDatabaseType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseDumpDatabaseType2 value: $value');
  }
}
