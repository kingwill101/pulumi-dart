/// The resource routing type.
enum RoutingType {
  default_("Default"),
  proxyOnly("ProxyOnly"),
  hostBased("HostBased"),
  extension("Extension"),
  tenant("Tenant"),
  fanout("Fanout"),
  locationBased("LocationBased"),
  failover("Failover"),
  cascadeExtension("CascadeExtension"),
  childFanout("ChildFanout"),
  cascadeAuthorizedExtension("CascadeAuthorizedExtension"),
  bypassEndpointSelectionOptimization("BypassEndpointSelectionOptimization"),
  locationMapping("LocationMapping"),
  serviceFanout("ServiceFanout");

  const RoutingType(this.value);
  final String value;

  static RoutingType fromValue(String value) {
    for (final item in RoutingType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoutingType value: $value');
  }
}

