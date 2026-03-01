/// The type used for authentication. Type: string.
enum AzureSqlDatabaseAuthenticationType {
  valueSQL("SQL"),
  valueServicePrincipal("ServicePrincipal"),
  valueSystemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  valueUserAssignedManagedIdentity("UserAssignedManagedIdentity");

  const AzureSqlDatabaseAuthenticationType(this.value);
  final String value;

  static AzureSqlDatabaseAuthenticationType fromValue(String value) {
    for (final item in AzureSqlDatabaseAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureSqlDatabaseAuthenticationType value: $value');
  }
}

