/// Optional. The network connect mode of the ManagementServer instance. For this version, only PRIVATE_SERVICE_ACCESS is supported.
enum NetworkConfigPeeringMode {
  peeringModeUnspecified("PEERING_MODE_UNSPECIFIED"),
  privateServiceAccess("PRIVATE_SERVICE_ACCESS");

  const NetworkConfigPeeringMode(this.value);
  final String value;

  static NetworkConfigPeeringMode fromValue(String value) {
    for (final item in NetworkConfigPeeringMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkConfigPeeringMode value: $value');
  }
}
