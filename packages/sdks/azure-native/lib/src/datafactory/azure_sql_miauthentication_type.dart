/// The type used for authentication. Type: string.
enum AzureSqlMIAuthenticationType {
  sQL("SQL"),
  servicePrincipal("ServicePrincipal"),
  systemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  userAssignedManagedIdentity("UserAssignedManagedIdentity");

  const AzureSqlMIAuthenticationType(this.wireValue);
  final String wireValue;

  static AzureSqlMIAuthenticationType fromValue(String value) {
    for (final item in AzureSqlMIAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureSqlMIAuthenticationType value: $value');
  }
}
