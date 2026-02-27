// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_load_balancer_address_pool.dart';
import 'bare_metal_load_balancer_node_pool_config.dart';

/// Represents configuration parameters for a MetalLB load balancer.
class BareMetalMetalLbConfig {
  /// AddressPools is a list of non-overlapping IP pools used by load balancer typed services. All addresses must be routable to load balancer nodes. IngressVIP must be included in the pools.
  final List<BareMetalLoadBalancerAddressPool> addressPools;

  /// Specifies the node pool running the load balancer. L2 connectivity is required among nodes in this pool. If missing, the control plane node pool is used as the load balancer pool.
  final BareMetalLoadBalancerNodePoolConfig? loadBalancerNodePoolConfig;

  BareMetalMetalLbConfig({
    required this.addressPools,
    this.loadBalancerNodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['addressPools'] = pulumi.Input.encodeList<
        BareMetalLoadBalancerAddressPool,
        Map<String, dynamic>>(addressPools, (value) => value.toMap());
    final loadBalancerNodePoolConfigValue = loadBalancerNodePoolConfig;
    if (loadBalancerNodePoolConfigValue != null) {
      map['loadBalancerNodePoolConfig'] =
          loadBalancerNodePoolConfigValue.toMap();
    }
    return map;
  }

  factory BareMetalMetalLbConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalMetalLbConfig(
      addressPools: pulumi.Input.decodeList<BareMetalLoadBalancerAddressPool>(
          map['addressPools'],
          (value) => BareMetalLoadBalancerAddressPool.fromMap(
              (value as Map).cast<String, dynamic>())),
      loadBalancerNodePoolConfig: map['loadBalancerNodePoolConfig'] == null
          ? null
          : BareMetalLoadBalancerNodePoolConfig.fromMap(
              (map['loadBalancerNodePoolConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
