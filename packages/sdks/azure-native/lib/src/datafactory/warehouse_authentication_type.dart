/// The authentication type to use.
enum WarehouseAuthenticationType {
  valueServicePrincipal("ServicePrincipal"),
  valueSystemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  valueUserAssignedManagedIdentity("UserAssignedManagedIdentity");

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
