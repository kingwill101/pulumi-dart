// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inference_component_deployment_config_auto_rollback_configuration.dart';
import 'inference_component_deployment_config_rolling_update_policy.dart';

class InferenceComponentDeploymentConfig {
  /// Automatic rollback configuration. See `autoRollbackConfiguration` Block.
  final pulumi.Input<InferenceComponentDeploymentConfigAutoRollbackConfiguration?>? autoRollbackConfiguration;
  /// Rolling deployment strategy. See `rollingUpdatePolicy` Block.
  final pulumi.Input<InferenceComponentDeploymentConfigRollingUpdatePolicy> rollingUpdatePolicy;

  /// Creates a new [InferenceComponentDeploymentConfig].
  /// [autoRollbackConfiguration] Automatic rollback configuration. See `autoRollbackConfiguration` Block.
  /// [rollingUpdatePolicy] Rolling deployment strategy. See `rollingUpdatePolicy` Block.
  const InferenceComponentDeploymentConfig({
    this.autoRollbackConfiguration,
    required this.rollingUpdatePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRollbackConfiguration': ?pulumi.Input.mapOptionalInputValue<InferenceComponentDeploymentConfigAutoRollbackConfiguration, Map<String, dynamic>>(autoRollbackConfiguration, (value) => value.toMap()),
      'rollingUpdatePolicy': pulumi.Input.mapInputValue<InferenceComponentDeploymentConfigRollingUpdatePolicy, Map<String, dynamic>>(rollingUpdatePolicy, (value) => value.toMap()),
    };
  }

  factory InferenceComponentDeploymentConfig.fromMap(Map<String, dynamic> map) {
    return InferenceComponentDeploymentConfig(
      autoRollbackConfiguration: (() { final guardedValue = map['autoRollbackConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InferenceComponentDeploymentConfigAutoRollbackConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rollingUpdatePolicy: pulumi.Input.fromValue(InferenceComponentDeploymentConfigRollingUpdatePolicy.fromMap((map['rollingUpdatePolicy']! as Map).cast<String, dynamic>())),
    );
  }
}
