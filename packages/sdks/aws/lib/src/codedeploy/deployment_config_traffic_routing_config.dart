// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_config_traffic_routing_config_time_based_canary.dart';
import 'deployment_config_traffic_routing_config_time_based_linear.dart';

class DeploymentConfigTrafficRoutingConfig {
  /// The time based canary configuration information. If `type` is `TimeBasedLinear`, use `timeBasedLinear` instead.
  final pulumi.Input<DeploymentConfigTrafficRoutingConfigTimeBasedCanary?>? timeBasedCanary;
  /// The time based linear configuration information. If `type` is `TimeBasedCanary`, use `timeBasedCanary` instead.
  final pulumi.Input<DeploymentConfigTrafficRoutingConfigTimeBasedLinear?>? timeBasedLinear;
  /// Type of traffic routing config. One of `TimeBasedCanary`, `TimeBasedLinear`, `AllAtOnce`.
  final pulumi.Input<String?>? type;

  /// Creates a new [DeploymentConfigTrafficRoutingConfig].
  /// [timeBasedCanary] The time based canary configuration information. If `type` is `TimeBasedLinear`, use `timeBasedLinear` instead.
  /// [timeBasedLinear] The time based linear configuration information. If `type` is `TimeBasedCanary`, use `timeBasedCanary` instead.
  /// [type] Type of traffic routing config. One of `TimeBasedCanary`, `TimeBasedLinear`, `AllAtOnce`.
  const DeploymentConfigTrafficRoutingConfig({
    this.timeBasedCanary,
    this.timeBasedLinear,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timeBasedCanary': ?pulumi.Input.mapOptionalInputValue<DeploymentConfigTrafficRoutingConfigTimeBasedCanary, Map<String, dynamic>>(timeBasedCanary, (value) => value.toMap()),
      'timeBasedLinear': ?pulumi.Input.mapOptionalInputValue<DeploymentConfigTrafficRoutingConfigTimeBasedLinear, Map<String, dynamic>>(timeBasedLinear, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory DeploymentConfigTrafficRoutingConfig.fromMap(Map<String, dynamic> map) {
    return DeploymentConfigTrafficRoutingConfig(
      timeBasedCanary: (() { final guardedValue = map['timeBasedCanary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentConfigTrafficRoutingConfigTimeBasedCanary.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeBasedLinear: (() { final guardedValue = map['timeBasedLinear']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentConfigTrafficRoutingConfigTimeBasedLinear.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
