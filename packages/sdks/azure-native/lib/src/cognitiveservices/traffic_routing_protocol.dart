/// Methodology used to route traffic to the application's deployments.
enum TrafficRoutingProtocol {
  valueFixedRatio("FixedRatio");

  const TrafficRoutingProtocol(this.value);
  final String value;

  static TrafficRoutingProtocol fromValue(String value) {
    for (final item in TrafficRoutingProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TrafficRoutingProtocol value: $value');
  }
}

