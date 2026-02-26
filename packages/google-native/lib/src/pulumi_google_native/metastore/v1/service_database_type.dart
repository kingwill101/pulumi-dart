/// Immutable. The database type that the Metastore service stores its data.
enum ServiceDatabaseType {
  databaseTypeUnspecified("DATABASE_TYPE_UNSPECIFIED"),
  mysql("MYSQL"),
  spanner("SPANNER");

  const ServiceDatabaseType(this.value);
  final String value;

  static ServiceDatabaseType fromValue(String value) {
    for (final item in ServiceDatabaseType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceDatabaseType value: $value');
  }
}
