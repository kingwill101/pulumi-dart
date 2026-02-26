// ignore_for_file: unused_element, unnecessary_cast

import 'vmware_f5_big_ip_config.dart';
import 'vmware_manual_lb_config.dart';
import 'vmware_metal_lb_config.dart';
import 'vmware_vip_config.dart';

/// Specifies the locad balancer config for the VMware user cluster.
class VmwareLoadBalancerConfig {
  /// Configuration for F5 Big IP typed load balancers.
  final VmwareF5BigIpConfig? f5Config;

  /// Manually configured load balancers.
  final VmwareManualLbConfig? manualLbConfig;

  /// Configuration for MetalLB typed load balancers.
  final VmwareMetalLbConfig? metalLbConfig;

  /// The VIPs used by the load balancer.
  final VmwareVipConfig? vipConfig;

  VmwareLoadBalancerConfig({
    this.f5Config,
    this.manualLbConfig,
    this.metalLbConfig,
    this.vipConfig,
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
    final vipConfigValue = vipConfig;
    if (vipConfigValue != null) {
      map['vipConfig'] = vipConfigValue.toMap();
    }
    return map;
  }

  factory VmwareLoadBalancerConfig.fromMap(Map<String, dynamic> map) {
    return VmwareLoadBalancerConfig(
      f5Config: map['f5Config'] == null
          ? null
          : VmwareF5BigIpConfig.fromMap(
              (map['f5Config'] as Map).cast<String, dynamic>()),
      manualLbConfig: map['manualLbConfig'] == null
          ? null
          : VmwareManualLbConfig.fromMap(
              (map['manualLbConfig'] as Map).cast<String, dynamic>()),
      metalLbConfig: map['metalLbConfig'] == null
          ? null
          : VmwareMetalLbConfig.fromMap(
              (map['metalLbConfig'] as Map).cast<String, dynamic>()),
      vipConfig: map['vipConfig'] == null
          ? null
          : VmwareVipConfig.fromMap(
              (map['vipConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
