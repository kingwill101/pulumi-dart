import 'package:pulumi/pulumi.dart' as pulumi;

/// Sql always encrypted AKV authentication type. Type: string.
enum SqlAlwaysEncryptedAkvAuthType implements pulumi.PulumiEnum<String> {
  servicePrincipal("ServicePrincipal"),
  managedIdentity("ManagedIdentity"),
  userAssignedManagedIdentity("UserAssignedManagedIdentity");

  const SqlAlwaysEncryptedAkvAuthType(this.wireValue);
  @override
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
