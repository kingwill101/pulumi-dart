/// The authentication type to use.
enum LakehouseAuthenticationType {
  valueServicePrincipal("ServicePrincipal"),
  valueSystemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  valueUserAssignedManagedIdentity("UserAssignedManagedIdentity");

  const LakehouseAuthenticationType(this.value);
  final String value;

  static LakehouseAuthenticationType fromValue(String value) {
    for (final item in LakehouseAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LakehouseAuthenticationType value: $value');
  }
}

