// ignore_for_file: unused_element, unnecessary_cast

import 'endpoint_deployment_config_blue_green_update_policy_traffic_routing_configuration_canary_size.dart';
import 'endpoint_deployment_config_blue_green_update_policy_traffic_routing_configuration_linear_step_size.dart';

class EndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfiguration {
  /// Batch size for the first step to turn on traffic on the new endpoint fleet. Value must be less than or equal to 50% of the variant's total instance count. See Canary Size.
  final EndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfigurationCanarySize?
  canarySize;

  /// Batch size for each step to turn on traffic on the new endpoint fleet. Value must be 10-50% of the variant's total instance count. See Linear Step Size.
  final EndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfigurationLinearStepSize?
  linearStepSize;

  /// Traffic routing strategy type. Valid values are: `ALL_AT_ONCE`, `CANARY`, and `LINEAR`.
  final String type;

  /// The waiting time (in seconds) between incremental steps to turn on traffic on the new endpoint fleet. Valid values are between `0` and `3600`.
  final int waitIntervalInSeconds;

  /// Creates a new [EndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfiguration].
  /// [canarySize] Batch size for the first step to turn on traffic on the new endpoint fleet. Value must be less than or equal to 50% of the variant's total instance count. See Canary Size.
  /// [linearStepSize] Batch size for each step to turn on traffic on the new endpoint fleet. Value must be 10-50% of the variant's total instance count. See Linear Step Size.
  /// [type] Traffic routing strategy type. Valid values are: `ALL_AT_ONCE`, `CANARY`, and `LINEAR`.
  /// [waitIntervalInSeconds] The waiting time (in seconds) between incremental steps to turn on traffic on the new endpoint fleet. Valid values are between `0` and `3600`.
  EndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfiguration({
    this.canarySize,
    this.linearStepSize,
    required this.type,
    required this.waitIntervalInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canarySize': ?canarySize == null ? null : canarySize!.toMap(),
      'linearStepSize': ?linearStepSize == null
          ? null
          : linearStepSize!.toMap(),
      'type': type,
      'waitIntervalInSeconds': waitIntervalInSeconds,
    };
  }

  factory EndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return EndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfiguration(
      canarySize: map['canarySize'] == null
          ? null
          : EndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfigurationCanarySize.fromMap(
              (map['canarySize'] as Map).cast<String, dynamic>(),
            ),
      linearStepSize: map['linearStepSize'] == null
          ? null
          : EndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfigurationLinearStepSize.fromMap(
              (map['linearStepSize'] as Map).cast<String, dynamic>(),
            ),
      type: map['type'] as String,
      waitIntervalInSeconds: map['waitIntervalInSeconds'] as int,
    );
  }
}
