// ignore_for_file: unused_element, unnecessary_cast

import 'vmware_f5_big_ip_config_response.dart';
import 'vmware_manual_lb_config_response.dart';
import 'vmware_metal_lb_config_response.dart';
import 'vmware_seesaw_config_response.dart';
import 'vmware_vip_config_response.dart';

/// Specifies the locad balancer config for the VMware user cluster.
class VmwareLoadBalancerConfigResponse {
  /// Configuration for F5 Big IP typed load balancers.
  final VmwareF5BigIpConfigResponse f5Config;

  /// Manually configured load balancers.
  final VmwareManualLbConfigResponse manualLbConfig;

  /// Configuration for MetalLB typed load balancers.
  final VmwareMetalLbConfigResponse metalLbConfig;

  /// Configuration for Seesaw typed load balancers.
  final VmwareSeesawConfigResponse seesawConfig;

  /// The VIPs used by the load balancer.
  final VmwareVipConfigResponse vipConfig;

  VmwareLoadBalancerConfigResponse({
    required this.f5Config,
    required this.manualLbConfig,
    required this.metalLbConfig,
    required this.seesawConfig,
    required this.vipConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['f5Config'] = f5Config.toMap();
    map['manualLbConfig'] = manualLbConfig.toMap();
    map['metalLbConfig'] = metalLbConfig.toMap();
    map['seesawConfig'] = seesawConfig.toMap();
    map['vipConfig'] = vipConfig.toMap();
    return map;
  }

  factory VmwareLoadBalancerConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareLoadBalancerConfigResponse(
      f5Config: VmwareF5BigIpConfigResponse.fromMap(
          (map['f5Config'] as Map).cast<String, dynamic>()),
      manualLbConfig: VmwareManualLbConfigResponse.fromMap(
          (map['manualLbConfig'] as Map).cast<String, dynamic>()),
      metalLbConfig: VmwareMetalLbConfigResponse.fromMap(
          (map['metalLbConfig'] as Map).cast<String, dynamic>()),
      seesawConfig: VmwareSeesawConfigResponse.fromMap(
          (map['seesawConfig'] as Map).cast<String, dynamic>()),
      vipConfig: VmwareVipConfigResponse.fromMap(
          (map['vipConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
