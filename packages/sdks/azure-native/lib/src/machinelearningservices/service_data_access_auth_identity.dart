/// Indicates which identity to use to authenticate service data access to customer's storage.
enum ServiceDataAccessAuthIdentity {
  valueNone("None"),
  valueWorkspaceSystemAssignedIdentity("WorkspaceSystemAssignedIdentity"),
  valueWorkspaceUserAssignedIdentity("WorkspaceUserAssignedIdentity");

  const ServiceDataAccessAuthIdentity(this.wireValue);
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
