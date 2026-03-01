/// Only valid when networkEndpointType is "GCE_VM_IP_PORT" and the NEG is regional.
enum NetworkEndpointGroupClientPortMappingMode {
  clientPortPerEndpoint("CLIENT_PORT_PER_ENDPOINT"),
  portMappingDisabled("PORT_MAPPING_DISABLED");

  const NetworkEndpointGroupClientPortMappingMode(this.value);
  final String value;

  static NetworkEndpointGroupClientPortMappingMode fromValue(String value) {
    for (final item in NetworkEndpointGroupClientPortMappingMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown NetworkEndpointGroupClientPortMappingMode value: $value',
    );
  }
}
