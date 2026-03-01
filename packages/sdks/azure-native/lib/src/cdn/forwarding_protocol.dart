/// Protocol this rule will use when forwarding traffic to backends.
enum ForwardingProtocol {
  httpOnly("HttpOnly"),
  httpsOnly("HttpsOnly"),
  matchRequest("MatchRequest");

  const ForwardingProtocol(this.value);
  final String value;

  static ForwardingProtocol fromValue(String value) {
    for (final item in ForwardingProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ForwardingProtocol value: $value');
  }
}

