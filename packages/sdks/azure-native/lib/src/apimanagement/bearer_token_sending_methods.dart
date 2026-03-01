/// Form of an authorization grant, which the client uses to request the access token.
enum BearerTokenSendingMethods {
  valueAuthorizationHeader("authorizationHeader"),
  valueQuery("query");

  const BearerTokenSendingMethods(this.value);
  final String value;

  static BearerTokenSendingMethods fromValue(String value) {
    for (final item in BearerTokenSendingMethods.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BearerTokenSendingMethods value: $value');
  }
}

