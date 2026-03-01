/// The type used for authentication. Type: string.
enum AzureSqlMIAuthenticationType {
  valueSQL("SQL"),
  valueServicePrincipal("ServicePrincipal"),
  valueSystemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  valueUserAssignedManagedIdentity("UserAssignedManagedIdentity");

  const AzureSqlMIAuthenticationType(this.value);
  final String value;

  static AzureSqlMIAuthenticationType fromValue(String value) {
    for (final item in AzureSqlMIAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureSqlMIAuthenticationType value: $value');
  }
}

