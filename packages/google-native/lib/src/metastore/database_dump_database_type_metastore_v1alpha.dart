/// The type of the database.
enum DatabaseDumpDatabaseTypeMetastoreV1alpha {
  databaseTypeUnspecified("DATABASE_TYPE_UNSPECIFIED"),
  mysql("MYSQL");

  const DatabaseDumpDatabaseTypeMetastoreV1alpha(this.value);
  final String value;

  static DatabaseDumpDatabaseTypeMetastoreV1alpha fromValue(String value) {
    for (final item in DatabaseDumpDatabaseTypeMetastoreV1alpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseDumpDatabaseTypeMetastoreV1alpha value: $value');
  }
}

