/// The type of the database.
enum DatabaseDumpDatabaseType {
  databaseTypeUnspecified("DATABASE_TYPE_UNSPECIFIED"),
  mysql("MYSQL");

  const DatabaseDumpDatabaseType(this.value);
  final String value;

  static DatabaseDumpDatabaseType fromValue(String value) {
    for (final item in DatabaseDumpDatabaseType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseDumpDatabaseType value: $value');
  }
}
