/// Form of an authorization grant, which the client uses to request the access token.
enum BearerTokenSendingMethods {
  valueAuthorizationHeader("authorizationHeader"),
  valueQuery("query");

  const BearerTokenSendingMethods(this.wireValue);
  final String wireValue;

  static BearerTokenSendingMethods fromValue(String value) {
    for (final item in BearerTokenSendingMethods.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BearerTokenSendingMethods value: $value');
  }
}

