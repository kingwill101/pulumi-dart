// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'continuous_deployment_policy_traffic_config_single_weight_config_session_stickiness_config.dart';

class ContinuousDeploymentPolicyTrafficConfigSingleWeightConfig {
  /// Session stickiness provides the ability to define multiple requests from a single viewer as a single session. This prevents the potentially inconsistent experience of sending some of a given user's requests to the staging distribution, while others are sent to the primary distribution. Define the session duration using TTL values. See `session_stickiness_config`.
  final pulumi.Input<ContinuousDeploymentPolicyTrafficConfigSingleWeightConfigSessionStickinessConfig>? sessionStickinessConfig;
  /// The percentage of traffic to send to a staging distribution, expressed as a decimal number between `0` and `.15`.
  final pulumi.Input<double> weight;

  /// Creates a new [ContinuousDeploymentPolicyTrafficConfigSingleWeightConfig].
  /// [sessionStickinessConfig] Session stickiness provides the ability to define multiple requests from a single viewer as a single session. This prevents the potentially inconsistent experience of sending some of a given user's requests to the staging distribution, while others are sent to the primary distribution. Define the session duration using TTL values. See `session_stickiness_config`.
  /// [weight] The percentage of traffic to send to a staging distribution, expressed as a decimal number between `0` and `.15`.
  ContinuousDeploymentPolicyTrafficConfigSingleWeightConfig({
    this.sessionStickinessConfig,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sessionStickinessConfig': ?pulumi.Input.mapOptionalInputValue<ContinuousDeploymentPolicyTrafficConfigSingleWeightConfigSessionStickinessConfig, Map<String, dynamic>>(sessionStickinessConfig, (value) => value.toMap()),
      'weight': weight,
    };
  }

  factory ContinuousDeploymentPolicyTrafficConfigSingleWeightConfig.fromMap(Map<String, dynamic> map) {
    return ContinuousDeploymentPolicyTrafficConfigSingleWeightConfig(
      sessionStickinessConfig: map['sessionStickinessConfig'] == null ? null : ((ContinuousDeploymentPolicyTrafficConfigSingleWeightConfigSessionStickinessConfig.fromMap((map['sessionStickinessConfig']! as Map).cast<String, dynamic>())).input()).input(),
      weight: (map['weight'] as double).input(),
    );
  }
}

