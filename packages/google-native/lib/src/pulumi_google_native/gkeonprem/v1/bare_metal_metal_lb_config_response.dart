// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_load_balancer_address_pool_response.dart';
import 'bare_metal_load_balancer_node_pool_config_response.dart';

/// Represents configuration parameters for a MetalLB load balancer.
class BareMetalMetalLbConfigResponse {
  /// AddressPools is a list of non-overlapping IP pools used by load balancer typed services. All addresses must be routable to load balancer nodes. IngressVIP must be included in the pools.
  final List<BareMetalLoadBalancerAddressPoolResponse> addressPools;

  /// Specifies the node pool running the load balancer. L2 connectivity is required among nodes in this pool. If missing, the control plane node pool is used as the load balancer pool.
  final BareMetalLoadBalancerNodePoolConfigResponse loadBalancerNodePoolConfig;

  BareMetalMetalLbConfigResponse({
    required this.addressPools,
    required this.loadBalancerNodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['addressPools'] = pulumi.Input.encodeList<
        BareMetalLoadBalancerAddressPoolResponse,
        Map<String, dynamic>>(addressPools, (value) => value.toMap());
    map['loadBalancerNodePoolConfig'] = loadBalancerNodePoolConfig.toMap();
    return map;
  }

  factory BareMetalMetalLbConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalMetalLbConfigResponse(
      addressPools:
          pulumi.Input.decodeList<BareMetalLoadBalancerAddressPoolResponse>(
              map['addressPools'],
              (value) => BareMetalLoadBalancerAddressPoolResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      loadBalancerNodePoolConfig:
          BareMetalLoadBalancerNodePoolConfigResponse.fromMap(
              (map['loadBalancerNodePoolConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
