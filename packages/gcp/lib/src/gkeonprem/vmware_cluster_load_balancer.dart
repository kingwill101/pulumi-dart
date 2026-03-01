// ignore_for_file: unused_element, unnecessary_cast

import 'vmware_cluster_load_balancer_f5_config.dart';
import 'vmware_cluster_load_balancer_manual_lb_config.dart';
import 'vmware_cluster_load_balancer_metal_lb_config.dart';
import 'vmware_cluster_load_balancer_vip_config.dart';

class VMwareClusterLoadBalancer {
  /// Configuration for F5 Big IP typed load balancers.
  /// Structure is documented below.
  final VMwareClusterLoadBalancerF5Config? f5Config;

  /// Manually configured load balancers.
  /// Structure is documented below.
  final VMwareClusterLoadBalancerManualLbConfig? manualLbConfig;

  /// Configuration for MetalLB typed load balancers.
  /// Structure is documented below.
  final VMwareClusterLoadBalancerMetalLbConfig? metalLbConfig;

  /// The VIPs used by the load balancer.
  /// Structure is documented below.
  final VMwareClusterLoadBalancerVipConfig? vipConfig;

  /// Creates a new [VMwareClusterLoadBalancer].
  /// [f5Config] Configuration for F5 Big IP typed load balancers.
  /// [manualLbConfig] Manually configured load balancers.
  /// [metalLbConfig] Configuration for MetalLB typed load balancers.
  /// [vipConfig] The VIPs used by the load balancer.
  VMwareClusterLoadBalancer({
    this.f5Config,
    this.manualLbConfig,
    this.metalLbConfig,
    this.vipConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'f5Config': ?f5Config == null ? null : f5Config!.toMap(),
      'manualLbConfig': ?manualLbConfig == null
          ? null
          : manualLbConfig!.toMap(),
      'metalLbConfig': ?metalLbConfig == null ? null : metalLbConfig!.toMap(),
      'vipConfig': ?vipConfig == null ? null : vipConfig!.toMap(),
    };
  }

  factory VMwareClusterLoadBalancer.fromMap(Map<String, dynamic> map) {
    return VMwareClusterLoadBalancer(
      f5Config: map['f5Config'] == null
          ? null
          : VMwareClusterLoadBalancerF5Config.fromMap(
              (map['f5Config'] as Map).cast<String, dynamic>(),
            ),
      manualLbConfig: map['manualLbConfig'] == null
          ? null
          : VMwareClusterLoadBalancerManualLbConfig.fromMap(
              (map['manualLbConfig'] as Map).cast<String, dynamic>(),
            ),
      metalLbConfig: map['metalLbConfig'] == null
          ? null
          : VMwareClusterLoadBalancerMetalLbConfig.fromMap(
              (map['metalLbConfig'] as Map).cast<String, dynamic>(),
            ),
      vipConfig: map['vipConfig'] == null
          ? null
          : VMwareClusterLoadBalancerVipConfig.fromMap(
              (map['vipConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
