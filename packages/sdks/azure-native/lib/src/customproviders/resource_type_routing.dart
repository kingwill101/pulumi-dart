/// The routing types that are supported for resource requests.
enum ResourceTypeRouting {
  valueProxy("Proxy"),
  valueProxyCache("Proxy,Cache");

  const ResourceTypeRouting(this.wireValue);
  final String wireValue;

  static ResourceTypeRouting fromValue(String value) {
    for (final item in ResourceTypeRouting.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceTypeRouting value: $value');
  }
}
