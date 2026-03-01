/// The protocol of the destination to where the traffic is redirected
enum FrontDoorRedirectProtocol {
  valueHttpOnly("HttpOnly"),
  valueHttpsOnly("HttpsOnly"),
  valueMatchRequest("MatchRequest");

  const FrontDoorRedirectProtocol(this.value);
  final String value;

  static FrontDoorRedirectProtocol fromValue(String value) {
    for (final item in FrontDoorRedirectProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FrontDoorRedirectProtocol value: $value');
  }
}

