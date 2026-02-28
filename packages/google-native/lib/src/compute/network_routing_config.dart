// ignore_for_file: unused_element, unnecessary_cast

import 'network_routing_config_bgp_best_path_selection_mode.dart';
import 'network_routing_config_bgp_inter_region_cost.dart';
import 'network_routing_config_routing_mode.dart';

/// A routing configuration attached to a network resource. The message includes the list of routers associated with the network, and a flag indicating the type of routing behavior to enforce network-wide.
class NetworkRoutingConfig {
  /// Enable comparison of Multi-Exit Discriminators (MED) across routes with different neighbor ASNs when using the STANDARD BGP best path selection algorithm.
  final bool? bgpAlwaysCompareMed;

  /// The BGP best path selection algorithm to be employed within this network for dynamic routes learned by Cloud Routers. Can be LEGACY (default) or STANDARD.
  final NetworkRoutingConfigBgpBestPathSelectionMode? bgpBestPathSelectionMode;

  /// Allows to define a preferred approach for handling inter-region cost in the selection process when using the STANDARD BGP best path selection algorithm. Can be DEFAULT or ADD_COST_TO_MED.
  final NetworkRoutingConfigBgpInterRegionCost? bgpInterRegionCost;

  /// The network-wide routing mode to use. If set to REGIONAL, this network's Cloud Routers will only advertise routes with subnets of this network in the same region as the router. If set to GLOBAL, this network's Cloud Routers will advertise routes with all subnets of this network, across regions.
  final NetworkRoutingConfigRoutingMode? routingMode;

  /// Creates a new [NetworkRoutingConfig].
  /// [bgpAlwaysCompareMed] Enable comparison of Multi-Exit Discriminators (MED) across routes with different neighbor ASNs when using the STANDARD BGP best path selection algorithm.
  /// [bgpBestPathSelectionMode] The BGP best path selection algorithm to be employed within this network for dynamic routes learned by Cloud Routers. Can be LEGACY (default) or STANDARD.
  /// [bgpInterRegionCost] Allows to define a preferred approach for handling inter-region cost in the selection process when using the STANDARD BGP best path selection algorithm. Can be DEFAULT or ADD_COST_TO_MED.
  /// [routingMode] The network-wide routing mode to use. If set to REGIONAL, this network's Cloud Routers will only advertise routes with subnets of this network in the same region as the router. If set to GLOBAL, this network's Cloud Routers will advertise routes with all subnets of this network, across regions.
  NetworkRoutingConfig({
    this.bgpAlwaysCompareMed,
    this.bgpBestPathSelectionMode,
    this.bgpInterRegionCost,
    this.routingMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bgpAlwaysCompareMedValue = bgpAlwaysCompareMed;
    if (bgpAlwaysCompareMedValue != null) {
      map['bgpAlwaysCompareMed'] = bgpAlwaysCompareMedValue;
    }
    final bgpBestPathSelectionModeValue = bgpBestPathSelectionMode;
    if (bgpBestPathSelectionModeValue != null) {
      map['bgpBestPathSelectionMode'] = bgpBestPathSelectionModeValue.value;
    }
    final bgpInterRegionCostValue = bgpInterRegionCost;
    if (bgpInterRegionCostValue != null) {
      map['bgpInterRegionCost'] = bgpInterRegionCostValue.value;
    }
    final routingModeValue = routingMode;
    if (routingModeValue != null) {
      map['routingMode'] = routingModeValue.value;
    }
    return map;
  }

  factory NetworkRoutingConfig.fromMap(Map<String, dynamic> map) {
    return NetworkRoutingConfig(
      bgpAlwaysCompareMed: map['bgpAlwaysCompareMed'] == null
          ? null
          : map['bgpAlwaysCompareMed'] as bool,
      bgpBestPathSelectionMode: map['bgpBestPathSelectionMode'] == null
          ? null
          : NetworkRoutingConfigBgpBestPathSelectionMode.fromValue(
              map['bgpBestPathSelectionMode'] as String),
      bgpInterRegionCost: map['bgpInterRegionCost'] == null
          ? null
          : NetworkRoutingConfigBgpInterRegionCost.fromValue(
              map['bgpInterRegionCost'] as String),
      routingMode: map['routingMode'] == null
          ? null
          : NetworkRoutingConfigRoutingMode.fromValue(
              map['routingMode'] as String),
    );
  }
}
