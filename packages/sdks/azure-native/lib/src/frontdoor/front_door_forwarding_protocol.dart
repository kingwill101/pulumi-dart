/// Protocol this rule will use when forwarding traffic to backends.
enum FrontDoorForwardingProtocol {
  valueHttpOnly("HttpOnly"),
  valueHttpsOnly("HttpsOnly"),
  valueMatchRequest("MatchRequest");

  const FrontDoorForwardingProtocol(this.value);
  final String value;

  static FrontDoorForwardingProtocol fromValue(String value) {
    for (final item in FrontDoorForwardingProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FrontDoorForwardingProtocol value: $value');
  }
}

