// ignore_for_file: unused_element, unnecessary_cast

import '../continuous_deployment_policy_traffic_config_single_weight_config_session_stickiness_config/continuous_deployment_policy_traffic_config_single_weight_config_session_stickiness_config.dart';

class ContinuousDeploymentPolicyTrafficConfigSingleWeightConfig {
  /// Session stickiness provides the ability to define multiple requests from a single viewer as a single session. This prevents the potentially inconsistent experience of sending some of a given user's requests to the staging distribution, while others are sent to the primary distribution. Define the session duration using TTL values. See <span pulumi-lang-nodejs="`sessionStickinessConfig`" pulumi-lang-dotnet="`SessionStickinessConfig`" pulumi-lang-go="`sessionStickinessConfig`" pulumi-lang-python="`session_stickiness_config`" pulumi-lang-yaml="`sessionStickinessConfig`" pulumi-lang-java="`sessionStickinessConfig`">`session_stickiness_config`</span>.
  final ContinuousDeploymentPolicyTrafficConfigSingleWeightConfigSessionStickinessConfig?
      sessionStickinessConfig;

  /// The percentage of traffic to send to a staging distribution, expressed as a decimal number between <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> and `.15`.
  final double weight;

  ContinuousDeploymentPolicyTrafficConfigSingleWeightConfig({
    this.sessionStickinessConfig,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sessionStickinessConfigValue = sessionStickinessConfig;
    if (sessionStickinessConfigValue != null) {
      map['sessionStickinessConfig'] = sessionStickinessConfigValue.toMap();
    }
    map['weight'] = weight;
    return map;
  }

  factory ContinuousDeploymentPolicyTrafficConfigSingleWeightConfig.fromMap(
      Map<String, dynamic> map) {
    return ContinuousDeploymentPolicyTrafficConfigSingleWeightConfig(
      sessionStickinessConfig: map['sessionStickinessConfig'] == null
          ? null
          : ContinuousDeploymentPolicyTrafficConfigSingleWeightConfigSessionStickinessConfig
              .fromMap((map['sessionStickinessConfig'] as Map)
                  .cast<String, dynamic>()),
      weight: map['weight'] as double,
    );
  }
}
