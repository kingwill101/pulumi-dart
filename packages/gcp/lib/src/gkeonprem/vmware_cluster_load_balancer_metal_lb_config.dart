// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_cluster_load_balancer_metal_lb_config_address_pool.dart';

class VMwareClusterLoadBalancerMetalLbConfig {
  /// AddressPools is a list of non-overlapping IP pools used by load balancer
  /// typed services. All addresses must be routable to load balancer nodes.
  /// IngressVIP must be included in the pools.
  /// Structure is documented below.
  final List<VMwareClusterLoadBalancerMetalLbConfigAddressPool> addressPools;

  /// Creates a new [VMwareClusterLoadBalancerMetalLbConfig].
  /// [addressPools] AddressPools is a list of non-overlapping IP pools used by load balancer
  VMwareClusterLoadBalancerMetalLbConfig({
    required this.addressPools,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['addressPools'] = pulumi.Input.encodeList<
        VMwareClusterLoadBalancerMetalLbConfigAddressPool,
        Map<String, dynamic>>(addressPools, (value) => value.toMap());
    return map;
  }

  factory VMwareClusterLoadBalancerMetalLbConfig.fromMap(
      Map<String, dynamic> map) {
    return VMwareClusterLoadBalancerMetalLbConfig(
      addressPools: pulumi.Input.decodeList<
              VMwareClusterLoadBalancerMetalLbConfigAddressPool>(
          map['addressPools'],
          (value) => VMwareClusterLoadBalancerMetalLbConfigAddressPool.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
