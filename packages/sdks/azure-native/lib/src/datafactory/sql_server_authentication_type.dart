import 'package:pulumi/pulumi.dart' as pulumi;

/// The type used for authentication. Type: string.
enum SqlServerAuthenticationType implements pulumi.PulumiEnum<String> {
  sQL("SQL"),
  windows("Windows"),
  userAssignedManagedIdentity("UserAssignedManagedIdentity");

  const SqlServerAuthenticationType(this.wireValue);
  @override
  final String wireValue;

  static SqlServerAuthenticationType fromValue(String value) {
    for (final item in SqlServerAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SqlServerAuthenticationType value: $value');
  }
}
