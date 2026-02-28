/// The network-wide routing mode to use. If set to REGIONAL, this network's Cloud Routers will only advertise routes with subnets of this network in the same region as the router. If set to GLOBAL, this network's Cloud Routers will advertise routes with all subnets of this network, across regions.
enum NetworkRoutingConfigRoutingMode {
  global("GLOBAL"),
  regional("REGIONAL");

  const NetworkRoutingConfigRoutingMode(this.value);
  final String value;

  static NetworkRoutingConfigRoutingMode fromValue(String value) {
    for (final item in NetworkRoutingConfigRoutingMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown NetworkRoutingConfigRoutingMode value: $value');
  }
}
