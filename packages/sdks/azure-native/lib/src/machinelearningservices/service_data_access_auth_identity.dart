import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates which identity to use to authenticate service data access to customer's storage.
enum ServiceDataAccessAuthIdentity implements pulumi.PulumiEnum<String> {
  none("None"),
  workspaceSystemAssignedIdentity("WorkspaceSystemAssignedIdentity"),
  workspaceUserAssignedIdentity("WorkspaceUserAssignedIdentity");

  const ServiceDataAccessAuthIdentity(this.wireValue);
  @override
  final String wireValue;

  static ServiceDataAccessAuthIdentity fromValue(String value) {
    for (final item in ServiceDataAccessAuthIdentity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceDataAccessAuthIdentity value: $value');
  }
}
