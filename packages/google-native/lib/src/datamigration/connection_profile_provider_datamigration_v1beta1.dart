/// The database provider.
enum ConnectionProfileProviderDatamigrationV1beta1 {
  databaseProviderUnspecified("DATABASE_PROVIDER_UNSPECIFIED"),
  cloudsql("CLOUDSQL"),
  rds("RDS");

  const ConnectionProfileProviderDatamigrationV1beta1(this.value);
  final String value;

  static ConnectionProfileProviderDatamigrationV1beta1 fromValue(String value) {
    for (final item in ConnectionProfileProviderDatamigrationV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionProfileProviderDatamigrationV1beta1 value: $value');
  }
}

