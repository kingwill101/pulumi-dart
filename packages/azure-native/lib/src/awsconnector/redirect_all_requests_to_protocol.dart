/// Protocol to use when redirecting requests. The default is the protocol that is used in the original request.
enum RedirectAllRequestsToProtocol {
  http("http"),
  https("https");

  const RedirectAllRequestsToProtocol(this.value);
  final String value;

  static RedirectAllRequestsToProtocol fromValue(String value) {
    for (final item in RedirectAllRequestsToProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RedirectAllRequestsToProtocol value: $value');
  }
}

