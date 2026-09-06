import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication type to use.
enum WarehouseAuthenticationType implements pulumi.PulumiEnum<String> {
  servicePrincipal("ServicePrincipal"),
  systemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  userAssignedManagedIdentity("UserAssignedManagedIdentity");

  const WarehouseAuthenticationType(this.wireValue);
  @override
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
