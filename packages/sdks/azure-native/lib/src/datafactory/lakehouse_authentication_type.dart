/// The authentication type to use.
enum LakehouseAuthenticationType {
  valueServicePrincipal("ServicePrincipal"),
  valueSystemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  valueUserAssignedManagedIdentity("UserAssignedManagedIdentity");

  const LakehouseAuthenticationType(this.wireValue);
  final String wireValue;

  static LakehouseAuthenticationType fromValue(String value) {
    for (final item in LakehouseAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LakehouseAuthenticationType value: $value');
  }
}

