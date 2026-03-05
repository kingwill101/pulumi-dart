/// Type of credential.
enum AuthCredentialsKind {
  oAuthClientCredentials("OAuthClientCredentials"),
  apiKeyAuthCredentials("ApiKeyAuthCredentials");

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

