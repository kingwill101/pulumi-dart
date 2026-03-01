/// Protocol to use for the redirect. The default value is MatchRequest
enum DestinationProtocol {
  matchRequest("MatchRequest"),
  http("Http"),
  https("Https");

  const DestinationProtocol(this.value);
  final String value;

  static DestinationProtocol fromValue(String value) {
    for (final item in DestinationProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DestinationProtocol value: $value');
  }
}

