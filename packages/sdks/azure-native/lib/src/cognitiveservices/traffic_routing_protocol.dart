/// Methodology used to route traffic to the application's deployments.
enum TrafficRoutingProtocol {
  valueFixedRatio("FixedRatio");

  const TrafficRoutingProtocol(this.wireValue);
  final String wireValue;

  static TrafficRoutingProtocol fromValue(String value) {
    for (final item in TrafficRoutingProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TrafficRoutingProtocol value: $value');
  }
}
