enum BearerTokenSendingMethod {
  valueAuthorizationHeader("authorizationHeader"),
  valueQuery("query");

  const BearerTokenSendingMethod(this.wireValue);
  final String wireValue;

  static BearerTokenSendingMethod fromValue(String value) {
    for (final item in BearerTokenSendingMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BearerTokenSendingMethod value: $value');
  }
}

