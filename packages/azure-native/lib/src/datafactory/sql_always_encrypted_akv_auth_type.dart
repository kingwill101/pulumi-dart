/// Sql always encrypted AKV authentication type. Type: string.
enum SqlAlwaysEncryptedAkvAuthType {
  valueServicePrincipal("ServicePrincipal"),
  valueManagedIdentity("ManagedIdentity"),
  valueUserAssignedManagedIdentity("UserAssignedManagedIdentity");

  const SqlAlwaysEncryptedAkvAuthType(this.value);
  final String value;

  static SqlAlwaysEncryptedAkvAuthType fromValue(String value) {
    for (final item in SqlAlwaysEncryptedAkvAuthType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SqlAlwaysEncryptedAkvAuthType value: $value');
  }
}

