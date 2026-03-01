/// The type used for authentication. Type: string.
enum AzureSqlDWAuthenticationType {
  valueSQL("SQL"),
  valueServicePrincipal("ServicePrincipal"),
  valueSystemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  valueUserAssignedManagedIdentity("UserAssignedManagedIdentity");

  const AzureSqlDWAuthenticationType(this.value);
  final String value;

  static AzureSqlDWAuthenticationType fromValue(String value) {
    for (final item in AzureSqlDWAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureSqlDWAuthenticationType value: $value');
  }
}

