import 'package:pulumi/pulumi.dart' as pulumi;

/// The type used for authentication. Type: string.
enum AzureSqlDatabaseAuthenticationType implements pulumi.PulumiEnum<String> {
  sQL("SQL"),
  servicePrincipal("ServicePrincipal"),
  systemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  userAssignedManagedIdentity("UserAssignedManagedIdentity");

  const AzureSqlDatabaseAuthenticationType(this.wireValue);
  @override
  final String wireValue;

  static AzureSqlDatabaseAuthenticationType fromValue(String value) {
    for (final item in AzureSqlDatabaseAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureSqlDatabaseAuthenticationType value: $value');
  }
}
