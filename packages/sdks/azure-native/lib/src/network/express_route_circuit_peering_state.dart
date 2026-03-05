/// The state of peering.
enum ExpressRouteCircuitPeeringState {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const ExpressRouteCircuitPeeringState(this.wireValue);
  final String wireValue;

  static ExpressRouteCircuitPeeringState fromValue(String value) {
    for (final item in ExpressRouteCircuitPeeringState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExpressRouteCircuitPeeringState value: $value');
  }
}

