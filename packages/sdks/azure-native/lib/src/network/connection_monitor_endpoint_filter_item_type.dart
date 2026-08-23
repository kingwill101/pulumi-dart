/// The type of item included in the filter. Currently only 'AgentAddress' is supported.
enum ConnectionMonitorEndpointFilterItemType {
  valueAgentAddress("AgentAddress");

  const ConnectionMonitorEndpointFilterItemType(this.wireValue);
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
