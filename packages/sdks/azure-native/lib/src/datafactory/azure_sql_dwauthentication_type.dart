/// The type used for authentication. Type: string.
enum AzureSqlDWAuthenticationType {
  sQL("SQL"),
  servicePrincipal("ServicePrincipal"),
  systemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  userAssignedManagedIdentity("UserAssignedManagedIdentity");

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
