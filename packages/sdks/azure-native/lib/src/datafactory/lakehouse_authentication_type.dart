import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication type to use.
enum LakehouseAuthenticationType implements pulumi.PulumiEnum<String> {
  servicePrincipal("ServicePrincipal"),
  systemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  userAssignedManagedIdentity("UserAssignedManagedIdentity");

  const LakehouseAuthenticationType(this.wireValue);
  @override
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
