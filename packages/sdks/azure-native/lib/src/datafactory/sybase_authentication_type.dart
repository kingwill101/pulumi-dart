import 'package:pulumi/pulumi.dart' as pulumi;

/// AuthenticationType to be used for connection.
enum SybaseAuthenticationType implements pulumi.PulumiEnum<String> {
  basic("Basic"),
  windows("Windows");

  const SybaseAuthenticationType(this.wireValue);
  @override
  final String wireValue;

  static SybaseAuthenticationType fromValue(String value) {
    for (final item in SybaseAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SybaseAuthenticationType value: $value');
  }
}
