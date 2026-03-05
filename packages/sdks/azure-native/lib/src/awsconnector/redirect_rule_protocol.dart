/// Protocol to use when redirecting requests. The default is the protocol that is used in the original request.
enum RedirectRuleProtocol {
  http("http"),
  https("https");

  const RedirectRuleProtocol(this.wireValue);
  final String wireValue;

  static RedirectRuleProtocol fromValue(String value) {
    for (final item in RedirectRuleProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RedirectRuleProtocol value: $value');
  }
}

