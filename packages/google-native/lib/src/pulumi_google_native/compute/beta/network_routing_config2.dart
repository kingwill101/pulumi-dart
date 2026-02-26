// ignore_for_file: unused_element, unnecessary_cast

import 'network_routing_config_routing_mode2.dart';

/// A routing configuration attached to a network resource. The message includes the list of routers associated with the network, and a flag indicating the type of routing behavior to enforce network-wide.
class NetworkRoutingConfig2 {
  /// The network-wide routing mode to use. If set to REGIONAL, this network's Cloud Routers will only advertise routes with subnets of this network in the same region as the router. If set to GLOBAL, this network's Cloud Routers will advertise routes with all subnets of this network, across regions.
  final NetworkRoutingConfigRoutingMode2? routingMode;

  NetworkRoutingConfig2({
    this.routingMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final routingModeValue = routingMode;
    if (routingModeValue != null) {
      map['routingMode'] = routingModeValue.value;
    }
    return map;
  }

  factory NetworkRoutingConfig2.fromMap(Map<String, dynamic> map) {
    return NetworkRoutingConfig2(
      routingMode: map['routingMode'] == null
          ? null
          : NetworkRoutingConfigRoutingMode2.fromValue(
              map['routingMode'] as String),
    );
  }
}
