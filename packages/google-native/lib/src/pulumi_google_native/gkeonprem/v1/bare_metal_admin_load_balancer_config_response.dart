// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_admin_manual_lb_config_response.dart';
import 'bare_metal_admin_port_config_response.dart';
import 'bare_metal_admin_vip_config_response.dart';

/// BareMetalAdminLoadBalancerConfig specifies the load balancer configuration.
class BareMetalAdminLoadBalancerConfigResponse {
  /// Manually configured load balancers.
  final BareMetalAdminManualLbConfigResponse manualLbConfig;

  /// Configures the ports that the load balancer will listen on.
  final BareMetalAdminPortConfigResponse portConfig;

  /// The VIPs used by the load balancer.
  final BareMetalAdminVipConfigResponse vipConfig;

  BareMetalAdminLoadBalancerConfigResponse({
    required this.manualLbConfig,
    required this.portConfig,
    required this.vipConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['manualLbConfig'] = manualLbConfig.toMap();
    map['portConfig'] = portConfig.toMap();
    map['vipConfig'] = vipConfig.toMap();
    return map;
  }

  factory BareMetalAdminLoadBalancerConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return BareMetalAdminLoadBalancerConfigResponse(
      manualLbConfig: BareMetalAdminManualLbConfigResponse.fromMap(
          (map['manualLbConfig'] as Map).cast<String, dynamic>()),
      portConfig: BareMetalAdminPortConfigResponse.fromMap(
          (map['portConfig'] as Map).cast<String, dynamic>()),
      vipConfig: BareMetalAdminVipConfigResponse.fromMap(
          (map['vipConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
