/// The authentication type to use.
enum WarehouseAuthenticationType {
  servicePrincipal("ServicePrincipal"),
  systemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  userAssignedManagedIdentity("UserAssignedManagedIdentity");

  const WarehouseAuthenticationType(this.wireValue);
  final String wireValue;

  static WarehouseAuthenticationType fromValue(String value) {
    for (final item in WarehouseAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WarehouseAuthenticationType value: $value');
  }
}
