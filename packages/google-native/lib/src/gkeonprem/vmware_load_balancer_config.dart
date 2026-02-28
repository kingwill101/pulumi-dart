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

  /// Creates a new [VmwareLoadBalancerConfig].
  /// [f5Config] Configuration for F5 Big IP typed load balancers.
  /// [manualLbConfig] Manually configured load balancers.
  /// [metalLbConfig] Configuration for MetalLB typed load balancers.
  /// [vipConfig] The VIPs used by the load balancer.
  VmwareLoadBalancerConfig({
    this.f5Config,
    this.manualLbConfig,
    this.metalLbConfig,
    this.vipConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'f5Config': ?f5Config == null ? null : f5Config!.toMap(),
      'manualLbConfig': ?manualLbConfig == null ? null : manualLbConfig!.toMap(),
      'metalLbConfig': ?metalLbConfig == null ? null : metalLbConfig!.toMap(),
      'vipConfig': ?vipConfig == null ? null : vipConfig!.toMap(),
    };
  }

  factory VmwareLoadBalancerConfig.fromMap(Map<String, dynamic> map) {
    return VmwareLoadBalancerConfig(
      f5Config: map['f5Config'] == null ? null : VmwareF5BigIpConfig.fromMap((map['f5Config'] as Map).cast<String, dynamic>()),
      manualLbConfig: map['manualLbConfig'] == null ? null : VmwareManualLbConfig.fromMap((map['manualLbConfig'] as Map).cast<String, dynamic>()),
      metalLbConfig: map['metalLbConfig'] == null ? null : VmwareMetalLbConfig.fromMap((map['metalLbConfig'] as Map).cast<String, dynamic>()),
      vipConfig: map['vipConfig'] == null ? null : VmwareVipConfig.fromMap((map['vipConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

