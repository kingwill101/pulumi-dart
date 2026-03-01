/// Immutable. The database type that the Metastore service stores its data.
enum ServiceDatabaseTypeMetastoreV1beta {
  databaseTypeUnspecified("DATABASE_TYPE_UNSPECIFIED"),
  mysql("MYSQL"),
  spanner("SPANNER");

  const ServiceDatabaseTypeMetastoreV1beta(this.value);
  final String value;

  static ServiceDatabaseTypeMetastoreV1beta fromValue(String value) {
    for (final item in ServiceDatabaseTypeMetastoreV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ServiceDatabaseTypeMetastoreV1beta value: $value',
    );
  }
}
