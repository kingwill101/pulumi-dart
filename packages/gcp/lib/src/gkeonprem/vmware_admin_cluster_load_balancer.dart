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
    final map = <String, dynamic>{};
    final f5ConfigValue = f5Config;
    if (f5ConfigValue != null) {
      map['f5Config'] = f5ConfigValue.toMap();
    }
    final manualLbConfigValue = manualLbConfig;
    if (manualLbConfigValue != null) {
      map['manualLbConfig'] = manualLbConfigValue.toMap();
    }
    final metalLbConfigValue = metalLbConfig;
    if (metalLbConfigValue != null) {
      map['metalLbConfig'] = metalLbConfigValue.toMap();
    }
    map['vipConfig'] = vipConfig.toMap();
    return map;
  }

  factory VmwareAdminClusterLoadBalancer.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterLoadBalancer(
      f5Config: map['f5Config'] == null
          ? null
          : VmwareAdminClusterLoadBalancerF5Config.fromMap(
              (map['f5Config'] as Map).cast<String, dynamic>()),
      manualLbConfig: map['manualLbConfig'] == null
          ? null
          : VmwareAdminClusterLoadBalancerManualLbConfig.fromMap(
              (map['manualLbConfig'] as Map).cast<String, dynamic>()),
      metalLbConfig: map['metalLbConfig'] == null
          ? null
          : VmwareAdminClusterLoadBalancerMetalLbConfig.fromMap(
              (map['metalLbConfig'] as Map).cast<String, dynamic>()),
      vipConfig: VmwareAdminClusterLoadBalancerVipConfig.fromMap(
          (map['vipConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
