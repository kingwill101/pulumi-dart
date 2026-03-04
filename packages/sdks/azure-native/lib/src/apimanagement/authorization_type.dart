/// Authorization type options
enum AuthorizationType {
  oAuth2("OAuth2");

  const AuthorizationType(this.wireValue);
  final String wireValue;

  static AuthorizationType fromValue(String value) {
    for (final item in AuthorizationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthorizationType value: $value');
  }
}
