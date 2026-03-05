/// Enum for different types of AuthCredentials supported.
enum AuthCredentialsKind {
  valueOAuthClientCredentials("OAuthClientCredentials"),
  valueApiKeyAuthCredentials("ApiKeyAuthCredentials");

  const AuthCredentialsKind(this.wireValue);
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

