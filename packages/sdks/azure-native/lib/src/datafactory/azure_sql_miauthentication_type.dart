/// The type used for authentication. Type: string.
enum AzureSqlMIAuthenticationType {
  valueSQL("SQL"),
  valueServicePrincipal("ServicePrincipal"),
  valueSystemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  valueUserAssignedManagedIdentity("UserAssignedManagedIdentity");

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
