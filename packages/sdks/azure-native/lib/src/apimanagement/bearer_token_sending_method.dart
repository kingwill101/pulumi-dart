enum BearerTokenSendingMethod {
  valueAuthorizationHeader("authorizationHeader"),
  valueQuery("query");

  const BearerTokenSendingMethod(this.value);
  final String value;

  static BearerTokenSendingMethod fromValue(String value) {
    for (final item in BearerTokenSendingMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BearerTokenSendingMethod value: $value');
  }
}

