/// The state of peering.
enum ExpressRouteCircuitPeeringState {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const ExpressRouteCircuitPeeringState(this.value);
  final String value;

  static ExpressRouteCircuitPeeringState fromValue(String value) {
    for (final item in ExpressRouteCircuitPeeringState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExpressRouteCircuitPeeringState value: $value');
  }
}

