/// Optional. The database engine major version. This is an optional field and it is populated at the Cluster creation time. If a database version is not supplied at cluster creation time, then a default database version will be used.
enum ClusterDatabaseVersion3 {
  databaseVersionUnspecified("DATABASE_VERSION_UNSPECIFIED"),
  postgres13("POSTGRES_13"),
  postgres14("POSTGRES_14"),
  postgres15("POSTGRES_15");

  const ClusterDatabaseVersion3(this.value);
  final String value;

  static ClusterDatabaseVersion3 fromValue(String value) {
    for (final item in ClusterDatabaseVersion3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterDatabaseVersion3 value: $value');
  }
}
