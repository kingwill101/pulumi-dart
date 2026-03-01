/// Type of credential.
enum AuthCredentialsKind {
  oAuthClientCredentials("OAuthClientCredentials"),
  apiKeyAuthCredentials("ApiKeyAuthCredentials");

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

