/// Immutable. The database type that the Metastore service stores its data.
enum ServiceDatabaseType2 {
  databaseTypeUnspecified("DATABASE_TYPE_UNSPECIFIED"),
  mysql("MYSQL"),
  spanner("SPANNER");

  const ServiceDatabaseType2(this.value);
  final String value;

  static ServiceDatabaseType2 fromValue(String value) {
    for (final item in ServiceDatabaseType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceDatabaseType2 value: $value');
  }
}
