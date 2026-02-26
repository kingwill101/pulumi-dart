/// The network-wide routing mode to use. If set to REGIONAL, this network's Cloud Routers will only advertise routes with subnets of this network in the same region as the router. If set to GLOBAL, this network's Cloud Routers will advertise routes with all subnets of this network, across regions.
enum NetworkRoutingConfigRoutingMode3 {
  global("GLOBAL"),
  regional("REGIONAL");

  const NetworkRoutingConfigRoutingMode3(this.value);
  final String value;

  static NetworkRoutingConfigRoutingMode3 fromValue(String value) {
    for (final item in NetworkRoutingConfigRoutingMode3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown NetworkRoutingConfigRoutingMode3 value: $value');
  }
}
