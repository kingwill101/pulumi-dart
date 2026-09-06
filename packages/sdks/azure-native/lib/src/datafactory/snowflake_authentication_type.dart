import 'package:pulumi/pulumi.dart' as pulumi;

/// The type used for authentication. Type: string.
enum SnowflakeAuthenticationType implements pulumi.PulumiEnum<String> {
  basic("Basic"),
  keyPair("KeyPair"),
  aADServicePrincipal("AADServicePrincipal");

  const SnowflakeAuthenticationType(this.wireValue);
  @override
  final String wireValue;

  static SnowflakeAuthenticationType fromValue(String value) {
    for (final item in SnowflakeAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SnowflakeAuthenticationType value: $value');
  }
}
