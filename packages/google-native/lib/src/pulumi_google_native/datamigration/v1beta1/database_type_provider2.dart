/// The database provider.
enum DatabaseTypeProvider2 {
  databaseProviderUnspecified("DATABASE_PROVIDER_UNSPECIFIED"),
  cloudsql("CLOUDSQL"),
  rds("RDS");

  const DatabaseTypeProvider2(this.value);
  final String value;

  static DatabaseTypeProvider2 fromValue(String value) {
    for (final item in DatabaseTypeProvider2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseTypeProvider2 value: $value');
  }
}
