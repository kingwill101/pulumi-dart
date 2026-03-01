/// The network-wide routing mode to use. If set to REGIONAL, this network's Cloud Routers will only advertise routes with subnets of this network in the same region as the router. If set to GLOBAL, this network's Cloud Routers will advertise routes with all subnets of this network, across regions.
enum NetworkRoutingConfigRoutingModeComputeV1 {
  global("GLOBAL"),
  regional("REGIONAL");

  const NetworkRoutingConfigRoutingModeComputeV1(this.value);
  final String value;

  static NetworkRoutingConfigRoutingModeComputeV1 fromValue(String value) {
    for (final item in NetworkRoutingConfigRoutingModeComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown NetworkRoutingConfigRoutingModeComputeV1 value: $value',
    );
  }
}
