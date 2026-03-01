/// Authorization type options
enum AuthorizationType {
  oAuth2("OAuth2");

  const AuthorizationType(this.value);
  final String value;

  static AuthorizationType fromValue(String value) {
    for (final item in AuthorizationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthorizationType value: $value');
  }
}

