/// The network-wide routing mode to use. If set to REGIONAL, this network's Cloud Routers will only advertise routes with subnets of this network in the same region as the router. If set to GLOBAL, this network's Cloud Routers will advertise routes with all subnets of this network, across regions.
enum NetworkRoutingConfigRoutingMode2 {
  global("GLOBAL"),
  regional("REGIONAL");

  const NetworkRoutingConfigRoutingMode2(this.value);
  final String value;

  static NetworkRoutingConfigRoutingMode2 fromValue(String value) {
    for (final item in NetworkRoutingConfigRoutingMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown NetworkRoutingConfigRoutingMode2 value: $value');
  }
}
