/// Only valid when networkEndpointType is "GCE_VM_IP_PORT" and the NEG is regional.
enum GlobalNetworkEndpointGroupClientPortMappingMode {
  clientPortPerEndpoint("CLIENT_PORT_PER_ENDPOINT"),
  portMappingDisabled("PORT_MAPPING_DISABLED");

  const GlobalNetworkEndpointGroupClientPortMappingMode(this.value);
  final String value;

  static GlobalNetworkEndpointGroupClientPortMappingMode fromValue(String value) {
    for (final item in GlobalNetworkEndpointGroupClientPortMappingMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalNetworkEndpointGroupClientPortMappingMode value: $value');
  }
}

