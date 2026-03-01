/// Supported protocols for the customer's endpoint.
enum AFDEndpointProtocols {
  http("Http"),
  https("Https");

  const AFDEndpointProtocols(this.value);
  final String value;

  static AFDEndpointProtocols fromValue(String value) {
    for (final item in AFDEndpointProtocols.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AFDEndpointProtocols value: $value');
  }
}

