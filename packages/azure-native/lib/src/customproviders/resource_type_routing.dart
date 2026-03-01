/// The routing types that are supported for resource requests.
enum ResourceTypeRouting {
  valueProxy("Proxy"),
  valueProxyCache("Proxy,Cache");

  const ResourceTypeRouting(this.value);
  final String value;

  static ResourceTypeRouting fromValue(String value) {
    for (final item in ResourceTypeRouting.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceTypeRouting value: $value');
  }
}

