// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_admin_cluster_load_balancer_bgp_lb_config.dart';
import 'bare_metal_admin_cluster_load_balancer_manual_lb_config.dart';
import 'bare_metal_admin_cluster_load_balancer_port_config.dart';
import 'bare_metal_admin_cluster_load_balancer_vip_config.dart';

class BareMetalAdminClusterLoadBalancer {
  /// A nested object resource.
  /// Structure is documented below.
  final BareMetalAdminClusterLoadBalancerBgpLbConfig? bgpLbConfig;

  /// A nested object resource.
  /// Structure is documented below.
  final BareMetalAdminClusterLoadBalancerManualLbConfig? manualLbConfig;

  /// Specifies the load balancer ports.
  /// Structure is documented below.
  final BareMetalAdminClusterLoadBalancerPortConfig portConfig;

  /// Specified the Bare Metal Load Balancer Config
  /// Structure is documented below.
  final BareMetalAdminClusterLoadBalancerVipConfig vipConfig;

  /// Creates a new [BareMetalAdminClusterLoadBalancer].
  /// [bgpLbConfig] A nested object resource.
  /// [manualLbConfig] A nested object resource.
  /// [portConfig] Specifies the load balancer ports.
  /// [vipConfig] Specified the Bare Metal Load Balancer Config
  BareMetalAdminClusterLoadBalancer({
    this.bgpLbConfig,
    this.manualLbConfig,
    required this.portConfig,
    required this.vipConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bgpLbConfigValue = bgpLbConfig;
    if (bgpLbConfigValue != null) {
      map['bgpLbConfig'] = bgpLbConfigValue.toMap();
    }
    final manualLbConfigValue = manualLbConfig;
    if (manualLbConfigValue != null) {
      map['manualLbConfig'] = manualLbConfigValue.toMap();
    }
    map['portConfig'] = portConfig.toMap();
    map['vipConfig'] = vipConfig.toMap();
    return map;
  }

  factory BareMetalAdminClusterLoadBalancer.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterLoadBalancer(
      bgpLbConfig: map['bgpLbConfig'] == null
          ? null
          : BareMetalAdminClusterLoadBalancerBgpLbConfig.fromMap(
              (map['bgpLbConfig'] as Map).cast<String, dynamic>()),
      manualLbConfig: map['manualLbConfig'] == null
          ? null
          : BareMetalAdminClusterLoadBalancerManualLbConfig.fromMap(
              (map['manualLbConfig'] as Map).cast<String, dynamic>()),
      portConfig: BareMetalAdminClusterLoadBalancerPortConfig.fromMap(
          (map['portConfig'] as Map).cast<String, dynamic>()),
      vipConfig: BareMetalAdminClusterLoadBalancerVipConfig.fromMap(
          (map['vipConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
