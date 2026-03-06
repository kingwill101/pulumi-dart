// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'continuous_deployment_policy_traffic_config_single_header_config.dart';
import 'continuous_deployment_policy_traffic_config_single_weight_config.dart';

class ContinuousDeploymentPolicyTrafficConfig {
  /// Determines which HTTP requests are sent to the staging distribution. See `single_header_config`.
  final pulumi.Input<ContinuousDeploymentPolicyTrafficConfigSingleHeaderConfig>? singleHeaderConfig;
  /// Contains the percentage of traffic to send to the staging distribution. See `single_weight_config`.
  final pulumi.Input<ContinuousDeploymentPolicyTrafficConfigSingleWeightConfig>? singleWeightConfig;
  /// Type of traffic configuration. Valid values are `SingleWeight` and `SingleHeader`.
  final pulumi.Input<String> type;

  /// Creates a new [ContinuousDeploymentPolicyTrafficConfig].
  /// [singleHeaderConfig] Determines which HTTP requests are sent to the staging distribution. See `single_header_config`.
  /// [singleWeightConfig] Contains the percentage of traffic to send to the staging distribution. See `single_weight_config`.
  /// [type] Type of traffic configuration. Valid values are `SingleWeight` and `SingleHeader`.
  const ContinuousDeploymentPolicyTrafficConfig({
    this.singleHeaderConfig,
    this.singleWeightConfig,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'singleHeaderConfig': ?pulumi.Input.mapOptionalInputValue<ContinuousDeploymentPolicyTrafficConfigSingleHeaderConfig, Map<String, dynamic>>(singleHeaderConfig, (value) => value.toMap()),
      'singleWeightConfig': ?pulumi.Input.mapOptionalInputValue<ContinuousDeploymentPolicyTrafficConfigSingleWeightConfig, Map<String, dynamic>>(singleWeightConfig, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ContinuousDeploymentPolicyTrafficConfig.fromMap(Map<String, dynamic> map) {
    return ContinuousDeploymentPolicyTrafficConfig(
      singleHeaderConfig: (() { final guardedValue = map['singleHeaderConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContinuousDeploymentPolicyTrafficConfigSingleHeaderConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      singleWeightConfig: (() { final guardedValue = map['singleWeightConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContinuousDeploymentPolicyTrafficConfigSingleWeightConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

