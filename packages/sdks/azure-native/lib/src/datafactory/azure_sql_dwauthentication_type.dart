/// The type used for authentication. Type: string.
enum AzureSqlDWAuthenticationType {
  valueSQL("SQL"),
  valueServicePrincipal("ServicePrincipal"),
  valueSystemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  valueUserAssignedManagedIdentity("UserAssignedManagedIdentity");

  const AzureSqlDWAuthenticationType(this.wireValue);
  final String wireValue;

  static AzureSqlDWAuthenticationType fromValue(String value) {
    for (final item in AzureSqlDWAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureSqlDWAuthenticationType value: $value');
  }
}
