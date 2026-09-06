import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of item included in the filter. Currently only 'AgentAddress' is supported.
enum ConnectionMonitorEndpointFilterItemType implements pulumi.PulumiEnum<String> {
  valueAgentAddress("AgentAddress");

  const ConnectionMonitorEndpointFilterItemType(this.wireValue);
  @override
  final String wireValue;

  static ConnectionMonitorEndpointFilterItemType fromValue(String value) {
    for (final item in ConnectionMonitorEndpointFilterItemType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionMonitorEndpointFilterItemType value: $value');
  }
}
