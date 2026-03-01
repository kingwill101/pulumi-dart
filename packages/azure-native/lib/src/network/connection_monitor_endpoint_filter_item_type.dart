/// The type of item included in the filter. Currently only 'AgentAddress' is supported.
enum ConnectionMonitorEndpointFilterItemType {
  valueAgentAddress("AgentAddress");

  const ConnectionMonitorEndpointFilterItemType(this.value);
  final String value;

  static ConnectionMonitorEndpointFilterItemType fromValue(String value) {
    for (final item in ConnectionMonitorEndpointFilterItemType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionMonitorEndpointFilterItemType value: $value');
  }
}

