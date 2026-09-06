import 'package:pulumi/pulumi.dart' as pulumi;

/// Methodology used to route traffic to the application's deployments.
enum TrafficRoutingProtocol implements pulumi.PulumiEnum<String> {
  fixedRatio("FixedRatio");

  const TrafficRoutingProtocol(this.wireValue);
  @override
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
