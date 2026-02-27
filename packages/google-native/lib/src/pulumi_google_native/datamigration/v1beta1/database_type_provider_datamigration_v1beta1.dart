/// The database provider.
enum DatabaseTypeProviderDatamigrationV1beta1 {
  databaseProviderUnspecified("DATABASE_PROVIDER_UNSPECIFIED"),
  cloudsql("CLOUDSQL"),
  rds("RDS");

  const DatabaseTypeProviderDatamigrationV1beta1(this.value);
  final String value;

  static DatabaseTypeProviderDatamigrationV1beta1 fromValue(String value) {
    for (final item in DatabaseTypeProviderDatamigrationV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown DatabaseTypeProviderDatamigrationV1beta1 value: $value');
  }
}
