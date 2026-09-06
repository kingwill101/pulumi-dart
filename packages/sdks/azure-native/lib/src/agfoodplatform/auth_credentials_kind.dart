import 'package:pulumi/pulumi.dart' as pulumi;

/// Enum for different types of AuthCredentials supported.
enum AuthCredentialsKind implements pulumi.PulumiEnum<String> {
  valueOAuthClientCredentials("OAuthClientCredentials"),
  valueApiKeyAuthCredentials("ApiKeyAuthCredentials");

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
