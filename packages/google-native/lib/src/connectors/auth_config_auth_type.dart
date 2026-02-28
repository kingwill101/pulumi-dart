/// The type of authentication configured.
enum AuthConfigAuthType {
  authTypeUnspecified("AUTH_TYPE_UNSPECIFIED"),
  userPassword("USER_PASSWORD"),
  oauth2JwtBearer("OAUTH2_JWT_BEARER"),
  oauth2ClientCredentials("OAUTH2_CLIENT_CREDENTIALS"),
  sshPublicKey("SSH_PUBLIC_KEY"),
  oauth2AuthCodeFlow("OAUTH2_AUTH_CODE_FLOW");

  const AuthConfigAuthType(this.value);
  final String value;

  static AuthConfigAuthType fromValue(String value) {
    for (final item in AuthConfigAuthType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthConfigAuthType value: $value');
  }
}
