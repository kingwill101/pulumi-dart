import 'package:pulumi/pulumi.dart' as pulumi;

/// Supported protocols for the customer's endpoint.
enum AFDEndpointProtocols implements pulumi.PulumiEnum<String> {
  http("Http"),
  https("Https");

  const AFDEndpointProtocols(this.wireValue);
  @override
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
