/// The database provider.
enum ConnectionProfileProvider2 {
  databaseProviderUnspecified("DATABASE_PROVIDER_UNSPECIFIED"),
  cloudsql("CLOUDSQL"),
  rds("RDS");

  const ConnectionProfileProvider2(this.value);
  final String value;

  static ConnectionProfileProvider2 fromValue(String value) {
    for (final item in ConnectionProfileProvider2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionProfileProvider2 value: $value');
  }
}
