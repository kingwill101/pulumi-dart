/// Required. All backend services and forwarding rules referenced by this extension must share the same load balancing scheme. Supported values: `INTERNAL_MANAGED`, `EXTERNAL_MANAGED`. For more information, refer to [Choosing a load balancer](https://cloud.google.com/load-balancing/docs/backend-service).
enum LbRouteExtensionLoadBalancingScheme {
  loadBalancingSchemeUnspecified("LOAD_BALANCING_SCHEME_UNSPECIFIED"),
  internalManaged("INTERNAL_MANAGED"),
  externalManaged("EXTERNAL_MANAGED");

  const LbRouteExtensionLoadBalancingScheme(this.value);
  final String value;

  static LbRouteExtensionLoadBalancingScheme fromValue(String value) {
    for (final item in LbRouteExtensionLoadBalancingScheme.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown LbRouteExtensionLoadBalancingScheme value: $value');
  }
}
