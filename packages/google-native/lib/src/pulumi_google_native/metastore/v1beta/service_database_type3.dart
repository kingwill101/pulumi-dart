/// Immutable. The database type that the Metastore service stores its data.
enum ServiceDatabaseType3 {
  databaseTypeUnspecified("DATABASE_TYPE_UNSPECIFIED"),
  mysql("MYSQL"),
  spanner("SPANNER");

  const ServiceDatabaseType3(this.value);
  final String value;

  static ServiceDatabaseType3 fromValue(String value) {
    for (final item in ServiceDatabaseType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceDatabaseType3 value: $value');
  }
}
