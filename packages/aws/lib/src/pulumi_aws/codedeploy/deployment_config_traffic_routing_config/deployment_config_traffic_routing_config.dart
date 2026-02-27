// ignore_for_file: unused_element, unnecessary_cast

import '../deployment_config_traffic_routing_config_time_based_canary/deployment_config_traffic_routing_config_time_based_canary.dart';
import '../deployment_config_traffic_routing_config_time_based_linear/deployment_config_traffic_routing_config_time_based_linear.dart';

class DeploymentConfigTrafficRoutingConfig {
  /// The time based canary configuration information. If `type` is `TimeBasedLinear`, use `time_based_linear` instead.
  final DeploymentConfigTrafficRoutingConfigTimeBasedCanary? timeBasedCanary;

  /// The time based linear configuration information. If `type` is `TimeBasedCanary`, use `time_based_canary` instead.
  final DeploymentConfigTrafficRoutingConfigTimeBasedLinear? timeBasedLinear;

  /// Type of traffic routing config. One of `TimeBasedCanary`, `TimeBasedLinear`, `AllAtOnce`.
  final String? type;

  DeploymentConfigTrafficRoutingConfig({
    this.timeBasedCanary,
    this.timeBasedLinear,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final timeBasedCanaryValue = timeBasedCanary;
    if (timeBasedCanaryValue != null) {
      map['timeBasedCanary'] = timeBasedCanaryValue.toMap();
    }
    final timeBasedLinearValue = timeBasedLinear;
    if (timeBasedLinearValue != null) {
      map['timeBasedLinear'] = timeBasedLinearValue.toMap();
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory DeploymentConfigTrafficRoutingConfig.fromMap(
      Map<String, dynamic> map) {
    return DeploymentConfigTrafficRoutingConfig(
      timeBasedCanary: map['timeBasedCanary'] == null
          ? null
          : DeploymentConfigTrafficRoutingConfigTimeBasedCanary.fromMap(
              (map['timeBasedCanary'] as Map).cast<String, dynamic>()),
      timeBasedLinear: map['timeBasedLinear'] == null
          ? null
          : DeploymentConfigTrafficRoutingConfigTimeBasedLinear.fromMap(
              (map['timeBasedLinear'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
