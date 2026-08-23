/// Supported protocols for the customer's endpoint.
enum AFDEndpointProtocols {
  http("Http"),
  https("Https");

  const AFDEndpointProtocols(this.wireValue);
  final String wireValue;

  static AFDEndpointProtocols fromValue(String value) {
    for (final item in AFDEndpointProtocols.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AFDEndpointProtocols value: $value');
  }
}
