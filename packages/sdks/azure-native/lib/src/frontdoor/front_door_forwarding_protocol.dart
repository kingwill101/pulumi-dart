/// Protocol this rule will use when forwarding traffic to backends.
enum FrontDoorForwardingProtocol {
  httpOnly("HttpOnly"),
  httpsOnly("HttpsOnly"),
  matchRequest("MatchRequest");

  const FrontDoorForwardingProtocol(this.wireValue);
  final String wireValue;

  static FrontDoorForwardingProtocol fromValue(String value) {
    for (final item in FrontDoorForwardingProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FrontDoorForwardingProtocol value: $value');
  }
}
