import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of credential.
enum AuthCredentialsKind implements pulumi.PulumiEnum<String> {
  oAuthClientCredentials("OAuthClientCredentials"),
  apiKeyAuthCredentials("ApiKeyAuthCredentials");

  const AuthCredentialsKind(this.wireValue);
  @override
  final String wireValue;

  static AuthCredentialsKind fromValue(String value) {
    for (final item in AuthCredentialsKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthCredentialsKind value: $value');
  }
}
