// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inference_component_deployment_config_rolling_update_policy_maximum_batch_size.dart';
import 'inference_component_deployment_config_rolling_update_policy_rollback_maximum_batch_size.dart';

class InferenceComponentDeploymentConfigRollingUpdatePolicy {
  /// Batch size for each rolling step. See `maximumBatchSize` and `rollbackMaximumBatchSize` Block.
  final pulumi.Input<InferenceComponentDeploymentConfigRollingUpdatePolicyMaximumBatchSize> maximumBatchSize;
  /// Time limit for the total deployment. Valid values are between `600` and `28800`.
  final pulumi.Input<int?>? maximumExecutionTimeoutInSeconds;
  /// Batch size for a rollback. See `maximumBatchSize` and `rollbackMaximumBatchSize` Block.
  final pulumi.Input<InferenceComponentDeploymentConfigRollingUpdatePolicyRollbackMaximumBatchSize?>? rollbackMaximumBatchSize;
  /// Length of the baking period in seconds. Valid values: `0`-`3600`.
  final pulumi.Input<int> waitIntervalInSeconds;

  /// Creates a new [InferenceComponentDeploymentConfigRollingUpdatePolicy].
  /// [maximumBatchSize] Batch size for each rolling step. See `maximumBatchSize` and `rollbackMaximumBatchSize` Block.
  /// [maximumExecutionTimeoutInSeconds] Time limit for the total deployment. Valid values are between `600` and `28800`.
  /// [rollbackMaximumBatchSize] Batch size for a rollback. See `maximumBatchSize` and `rollbackMaximumBatchSize` Block.
  /// [waitIntervalInSeconds] Length of the baking period in seconds. Valid values: `0`-`3600`.
  const InferenceComponentDeploymentConfigRollingUpdatePolicy({
    required this.maximumBatchSize,
    this.maximumExecutionTimeoutInSeconds,
    this.rollbackMaximumBatchSize,
    required this.waitIntervalInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximumBatchSize': pulumi.Input.mapInputValue<InferenceComponentDeploymentConfigRollingUpdatePolicyMaximumBatchSize, Map<String, dynamic>>(maximumBatchSize, (value) => value.toMap()),
      'maximumExecutionTimeoutInSeconds': ?maximumExecutionTimeoutInSeconds,
      'rollbackMaximumBatchSize': ?pulumi.Input.mapOptionalInputValue<InferenceComponentDeploymentConfigRollingUpdatePolicyRollbackMaximumBatchSize, Map<String, dynamic>>(rollbackMaximumBatchSize, (value) => value.toMap()),
      'waitIntervalInSeconds': waitIntervalInSeconds,
    };
  }

  factory InferenceComponentDeploymentConfigRollingUpdatePolicy.fromMap(Map<String, dynamic> map) {
    return InferenceComponentDeploymentConfigRollingUpdatePolicy(
      maximumBatchSize: pulumi.Input.fromValue(InferenceComponentDeploymentConfigRollingUpdatePolicyMaximumBatchSize.fromMap((map['maximumBatchSize']! as Map).cast<String, dynamic>())),
      maximumExecutionTimeoutInSeconds: (() { final guardedValue = map['maximumExecutionTimeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      rollbackMaximumBatchSize: (() { final guardedValue = map['rollbackMaximumBatchSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InferenceComponentDeploymentConfigRollingUpdatePolicyRollbackMaximumBatchSize.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      waitIntervalInSeconds: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['waitIntervalInSeconds'])),
    );
  }
}
