/// The BGP best path selection algorithm to be employed within this network for dynamic routes learned by Cloud Routers. Can be LEGACY (default) or STANDARD.
enum NetworkRoutingConfigBgpBestPathSelectionMode {
  legacy("LEGACY"),
  standard("STANDARD");

  const NetworkRoutingConfigBgpBestPathSelectionMode(this.value);
  final String value;

  static NetworkRoutingConfigBgpBestPathSelectionMode fromValue(String value) {
    for (final item in NetworkRoutingConfigBgpBestPathSelectionMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown NetworkRoutingConfigBgpBestPathSelectionMode value: $value',
    );
  }
}
