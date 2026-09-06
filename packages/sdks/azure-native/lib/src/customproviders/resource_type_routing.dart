import 'package:pulumi/pulumi.dart' as pulumi;

/// The routing types that are supported for resource requests.
enum ResourceTypeRouting implements pulumi.PulumiEnum<String> {
  valueProxy("Proxy"),
  valueProxyCache("Proxy,Cache");

  const ResourceTypeRouting(this.wireValue);
  @override
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
