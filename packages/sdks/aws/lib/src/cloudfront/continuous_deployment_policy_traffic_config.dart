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
  ContinuousDeploymentPolicyTrafficConfig({
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
      singleHeaderConfig: map['singleHeaderConfig'] == null ? null : ((ContinuousDeploymentPolicyTrafficConfigSingleHeaderConfig.fromMap((map['singleHeaderConfig']! as Map).cast<String, dynamic>())).input()).input(),
      singleWeightConfig: map['singleWeightConfig'] == null ? null : ((ContinuousDeploymentPolicyTrafficConfigSingleWeightConfig.fromMap((map['singleWeightConfig']! as Map).cast<String, dynamic>())).input()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

