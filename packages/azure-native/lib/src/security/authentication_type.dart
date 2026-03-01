/// The authentication type
enum AuthenticationType {
  valueAccessToken("AccessToken");

  const AuthenticationType(this.value);
  final String value;

  static AuthenticationType fromValue(String value) {
    for (final item in AuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthenticationType value: $value');
  }
}

