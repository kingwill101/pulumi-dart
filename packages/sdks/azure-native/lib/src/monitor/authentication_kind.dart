import 'package:pulumi/pulumi.dart' as pulumi;

/// Kind of the authentication setting
enum AuthenticationKind implements pulumi.PulumiEnum<String> {
  managedIdentity("ManagedIdentity");

  const AuthenticationKind(this.wireValue);
  @override
  final String wireValue;

  static AuthenticationKind fromValue(String value) {
    for (final item in AuthenticationKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthenticationKind value: $value');
  }
}
