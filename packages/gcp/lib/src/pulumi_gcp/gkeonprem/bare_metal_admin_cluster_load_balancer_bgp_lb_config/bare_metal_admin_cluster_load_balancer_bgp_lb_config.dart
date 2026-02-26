// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bare_metal_admin_cluster_load_balancer_bgp_lb_config_address_pool/bare_metal_admin_cluster_load_balancer_bgp_lb_config_address_pool.dart';
import '../bare_metal_admin_cluster_load_balancer_bgp_lb_config_bgp_peer_config/bare_metal_admin_cluster_load_balancer_bgp_lb_config_bgp_peer_config.dart';
import '../bare_metal_admin_cluster_load_balancer_bgp_lb_config_load_balancer_node_pool_config/bare_metal_admin_cluster_load_balancer_bgp_lb_config_load_balancer_node_pool_config.dart';

class BareMetalAdminClusterLoadBalancerBgpLbConfig {
  /// a list of non-overlapping IP pools used
  /// by load balancer typed services.
  /// Structure is documented below.
  final List<BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPool>?
      addressPools;

  /// BGP autonomous system number (ASN) of the cluster.
  final int? asn;

  /// BGP autonomous system number (ASN) of the cluster.
  /// Structure is documented below.
  final List<BareMetalAdminClusterLoadBalancerBgpLbConfigBgpPeerConfig>?
      bgpPeerConfigs;

  /// A nested object resource.
  /// Structure is documented below.
  final BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig?
      loadBalancerNodePoolConfig;

  BareMetalAdminClusterLoadBalancerBgpLbConfig({
    this.addressPools,
    this.asn,
    this.bgpPeerConfigs,
    this.loadBalancerNodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addressPoolsValue = addressPools;
    if (addressPoolsValue != null) {
      map['addressPools'] = Input.encodeList<
          BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPool,
          Map<String, dynamic>>(addressPoolsValue, (value) => value.toMap());
    }
    final asnValue = asn;
    if (asnValue != null) {
      map['asn'] = asnValue;
    }
    final bgpPeerConfigsValue = bgpPeerConfigs;
    if (bgpPeerConfigsValue != null) {
      map['bgpPeerConfigs'] = Input.encodeList<
          BareMetalAdminClusterLoadBalancerBgpLbConfigBgpPeerConfig,
          Map<String, dynamic>>(bgpPeerConfigsValue, (value) => value.toMap());
    }
    final loadBalancerNodePoolConfigValue = loadBalancerNodePoolConfig;
    if (loadBalancerNodePoolConfigValue != null) {
      map['loadBalancerNodePoolConfig'] =
          loadBalancerNodePoolConfigValue.toMap();
    }
    return map;
  }

  factory BareMetalAdminClusterLoadBalancerBgpLbConfig.fromMap(
      Map<String, dynamic> map) {
    return BareMetalAdminClusterLoadBalancerBgpLbConfig(
      addressPools: map['addressPools'] == null
          ? null
          : Input.decodeList<
                  BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPool>(
              map['addressPools'],
              (value) => BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPool
                  .fromMap((value as Map).cast<String, dynamic>())),
      asn: map['asn'] == null ? null : map['asn'] as int,
      bgpPeerConfigs: map['bgpPeerConfigs'] == null
          ? null
          : Input.decodeList<
                  BareMetalAdminClusterLoadBalancerBgpLbConfigBgpPeerConfig>(
              map['bgpPeerConfigs'],
              (value) =>
                  BareMetalAdminClusterLoadBalancerBgpLbConfigBgpPeerConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerNodePoolConfig: map['loadBalancerNodePoolConfig'] == null
          ? null
          : BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig
              .fromMap((map['loadBalancerNodePoolConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
