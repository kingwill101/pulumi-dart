// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_admin_cluster_load_balancer_bgp_lb_config_load_balancer_node_pool_config_node_pool_config.dart';

class BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig {
  /// A nested object resource.
  /// Structure is documented below.
  final BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfig?
      nodePoolConfig;

  /// Creates a new [BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig].
  /// [nodePoolConfig] A nested object resource.
  BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig({
    this.nodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nodePoolConfigValue = nodePoolConfig;
    if (nodePoolConfigValue != null) {
      map['nodePoolConfig'] = nodePoolConfigValue.toMap();
    }
    return map;
  }

  factory BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig.fromMap(
      Map<String, dynamic> map) {
    return BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig(
      nodePoolConfig: map['nodePoolConfig'] == null
          ? null
          : BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfig
              .fromMap((map['nodePoolConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
