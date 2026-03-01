// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_cluster_load_balancer_bgp_lb_config.dart';
import 'bare_metal_cluster_load_balancer_manual_lb_config.dart';
import 'bare_metal_cluster_load_balancer_metal_lb_config.dart';
import 'bare_metal_cluster_load_balancer_port_config.dart';
import 'bare_metal_cluster_load_balancer_vip_config.dart';

class BareMetalClusterLoadBalancer {
  /// Configuration for BGP typed load balancers.
  /// Structure is documented below.
  final BareMetalClusterLoadBalancerBgpLbConfig? bgpLbConfig;

  /// A nested object resource.
  /// Structure is documented below.
  final BareMetalClusterLoadBalancerManualLbConfig? manualLbConfig;

  /// A nested object resource.
  /// Structure is documented below.
  final BareMetalClusterLoadBalancerMetalLbConfig? metalLbConfig;

  /// Specifies the load balancer ports.
  /// Structure is documented below.
  final BareMetalClusterLoadBalancerPortConfig portConfig;

  /// Specified the Bare Metal Load Balancer Config
  /// Structure is documented below.
  final BareMetalClusterLoadBalancerVipConfig vipConfig;

  /// Creates a new [BareMetalClusterLoadBalancer].
  /// [bgpLbConfig] Configuration for BGP typed load balancers.
  /// [manualLbConfig] A nested object resource.
  /// [metalLbConfig] A nested object resource.
  /// [portConfig] Specifies the load balancer ports.
  /// [vipConfig] Specified the Bare Metal Load Balancer Config
  BareMetalClusterLoadBalancer({
    this.bgpLbConfig,
    this.manualLbConfig,
    this.metalLbConfig,
    required this.portConfig,
    required this.vipConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpLbConfig': ?bgpLbConfig == null ? null : bgpLbConfig!.toMap(),
      'manualLbConfig': ?manualLbConfig == null
          ? null
          : manualLbConfig!.toMap(),
      'metalLbConfig': ?metalLbConfig == null ? null : metalLbConfig!.toMap(),
      'portConfig': portConfig.toMap(),
      'vipConfig': vipConfig.toMap(),
    };
  }

  factory BareMetalClusterLoadBalancer.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterLoadBalancer(
      bgpLbConfig: map['bgpLbConfig'] == null
          ? null
          : BareMetalClusterLoadBalancerBgpLbConfig.fromMap(
              (map['bgpLbConfig'] as Map).cast<String, dynamic>(),
            ),
      manualLbConfig: map['manualLbConfig'] == null
          ? null
          : BareMetalClusterLoadBalancerManualLbConfig.fromMap(
              (map['manualLbConfig'] as Map).cast<String, dynamic>(),
            ),
      metalLbConfig: map['metalLbConfig'] == null
          ? null
          : BareMetalClusterLoadBalancerMetalLbConfig.fromMap(
              (map['metalLbConfig'] as Map).cast<String, dynamic>(),
            ),
      portConfig: BareMetalClusterLoadBalancerPortConfig.fromMap(
        (map['portConfig'] as Map).cast<String, dynamic>(),
      ),
      vipConfig: BareMetalClusterLoadBalancerVipConfig.fromMap(
        (map['vipConfig'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
