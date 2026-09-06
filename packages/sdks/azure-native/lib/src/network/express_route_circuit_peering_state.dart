import 'package:pulumi/pulumi.dart' as pulumi;

/// The state of peering.
enum ExpressRouteCircuitPeeringState implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const ExpressRouteCircuitPeeringState(this.wireValue);
  @override
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
