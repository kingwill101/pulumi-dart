/// Sql always encrypted AKV authentication type. Type: string.
enum SqlAlwaysEncryptedAkvAuthType {
  servicePrincipal("ServicePrincipal"),
  managedIdentity("ManagedIdentity"),
  userAssignedManagedIdentity("UserAssignedManagedIdentity");

  const SqlAlwaysEncryptedAkvAuthType(this.wireValue);
  final String wireValue;

  static SqlAlwaysEncryptedAkvAuthType fromValue(String value) {
    for (final item in SqlAlwaysEncryptedAkvAuthType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SqlAlwaysEncryptedAkvAuthType value: $value');
  }
}
