/// The authentication type to use.
enum WarehouseAuthenticationType {
  valueServicePrincipal("ServicePrincipal"),
  valueSystemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  valueUserAssignedManagedIdentity("UserAssignedManagedIdentity");

  const WarehouseAuthenticationType(this.value);
  final String value;

  static WarehouseAuthenticationType fromValue(String value) {
    for (final item in WarehouseAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WarehouseAuthenticationType value: $value');
  }
}

