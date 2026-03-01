/// Enum for different types of AuthCredentials supported.
enum AuthCredentialsKind {
  valueOAuthClientCredentials("OAuthClientCredentials"),
  valueApiKeyAuthCredentials("ApiKeyAuthCredentials");

  const AuthCredentialsKind(this.value);
  final String value;

  static AuthCredentialsKind fromValue(String value) {
    for (final item in AuthCredentialsKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthCredentialsKind value: $value');
  }
}

