// ignore_for_file: unused_element, unnecessary_cast

import 'vmware_admin_cluster_load_balancer_f5_config.dart';
import 'vmware_admin_cluster_load_balancer_manual_lb_config.dart';
import 'vmware_admin_cluster_load_balancer_metal_lb_config.dart';
import 'vmware_admin_cluster_load_balancer_vip_config.dart';

class VmwareAdminClusterLoadBalancer {
  /// Configuration for F5 Big IP typed load balancers.
  /// Structure is documented below.
  final VmwareAdminClusterLoadBalancerF5Config? f5Config;

  /// Manually configured load balancers.
  /// Structure is documented below.
  final VmwareAdminClusterLoadBalancerManualLbConfig? manualLbConfig;

  /// Metal LB load balancers.
  /// Structure is documented below.
  final VmwareAdminClusterLoadBalancerMetalLbConfig? metalLbConfig;

  /// Specified the VMware Load Balancer Config
  /// Structure is documented below.
  final VmwareAdminClusterLoadBalancerVipConfig vipConfig;

  /// Creates a new [VmwareAdminClusterLoadBalancer].
  /// [f5Config] Configuration for F5 Big IP typed load balancers.
  /// [manualLbConfig] Manually configured load balancers.
  /// [metalLbConfig] Metal LB load balancers.
  /// [vipConfig] Specified the VMware Load Balancer Config
  VmwareAdminClusterLoadBalancer({
    this.f5Config,
    this.manualLbConfig,
    this.metalLbConfig,
    required this.vipConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'f5Config': ?f5Config == null ? null : f5Config!.toMap(),
      'manualLbConfig': ?manualLbConfig == null
          ? null
          : manualLbConfig!.toMap(),
      'metalLbConfig': ?metalLbConfig == null ? null : metalLbConfig!.toMap(),
      'vipConfig': vipConfig.toMap(),
    };
  }

  factory VmwareAdminClusterLoadBalancer.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterLoadBalancer(
      f5Config: map['f5Config'] == null
          ? null
          : VmwareAdminClusterLoadBalancerF5Config.fromMap(
              (map['f5Config'] as Map).cast<String, dynamic>(),
            ),
      manualLbConfig: map['manualLbConfig'] == null
          ? null
          : VmwareAdminClusterLoadBalancerManualLbConfig.fromMap(
              (map['manualLbConfig'] as Map).cast<String, dynamic>(),
            ),
      metalLbConfig: map['metalLbConfig'] == null
          ? null
          : VmwareAdminClusterLoadBalancerMetalLbConfig.fromMap(
              (map['metalLbConfig'] as Map).cast<String, dynamic>(),
            ),
      vipConfig: VmwareAdminClusterLoadBalancerVipConfig.fromMap(
        (map['vipConfig'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
