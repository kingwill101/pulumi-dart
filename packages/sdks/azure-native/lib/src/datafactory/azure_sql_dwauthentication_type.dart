import 'package:pulumi/pulumi.dart' as pulumi;

/// The type used for authentication. Type: string.
enum AzureSqlDWAuthenticationType implements pulumi.PulumiEnum<String> {
  sQL("SQL"),
  servicePrincipal("ServicePrincipal"),
  systemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  userAssignedManagedIdentity("UserAssignedManagedIdentity");

  const AzureSqlDWAuthenticationType(this.wireValue);
  @override
  final String wireValue;

  static AzureSqlDWAuthenticationType fromValue(String value) {
    for (final item in AzureSqlDWAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureSqlDWAuthenticationType value: $value');
  }
}
