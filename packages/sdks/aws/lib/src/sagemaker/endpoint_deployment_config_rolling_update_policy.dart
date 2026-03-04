// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_deployment_config_rolling_update_policy_maximum_batch_size.dart';
import 'endpoint_deployment_config_rolling_update_policy_rollback_maximum_batch_size.dart';

class EndpointDeploymentConfigRollingUpdatePolicy {
  /// Batch size for each rolling step to provision capacity and turn on traffic on the new endpoint fleet, and terminate capacity on the old endpoint fleet. Value must be between 5% to 50% of the variant's total instance count. See Maximum Batch Size.
  final pulumi.Input<
    EndpointDeploymentConfigRollingUpdatePolicyMaximumBatchSize
  >
  maximumBatchSize;

  /// The time limit for the total deployment. Exceeding this limit causes a timeout. Valid values are between `600` and `14400`.
  final pulumi.Input<int>? maximumExecutionTimeoutInSeconds;

  /// Batch size for rollback to the old endpoint fleet. Each rolling step to provision capacity and turn on traffic on the old endpoint fleet, and terminate capacity on the new endpoint fleet. If this field is absent, the default value will be set to 100% of total capacity which means to bring up the whole capacity of the old fleet at once during rollback. See Rollback Maximum Batch Size.
  final pulumi.Input<
    EndpointDeploymentConfigRollingUpdatePolicyRollbackMaximumBatchSize
  >?
  rollbackMaximumBatchSize;

  /// The length of the baking period, during which SageMaker AI monitors alarms for each batch on the new fleet. Valid values are between `0` and `3600`.
  final pulumi.Input<int> waitIntervalInSeconds;

  /// Creates a new [EndpointDeploymentConfigRollingUpdatePolicy].
  /// [maximumBatchSize] Batch size for each rolling step to provision capacity and turn on traffic on the new endpoint fleet, and terminate capacity on the old endpoint fleet. Value must be between 5% to 50% of the variant's total instance count. See Maximum Batch Size.
  /// [maximumExecutionTimeoutInSeconds] The time limit for the total deployment. Exceeding this limit causes a timeout. Valid values are between `600` and `14400`.
  /// [rollbackMaximumBatchSize] Batch size for rollback to the old endpoint fleet. Each rolling step to provision capacity and turn on traffic on the old endpoint fleet, and terminate capacity on the new endpoint fleet. If this field is absent, the default value will be set to 100% of total capacity which means to bring up the whole capacity of the old fleet at once during rollback. See Rollback Maximum Batch Size.
  /// [waitIntervalInSeconds] The length of the baking period, during which SageMaker AI monitors alarms for each batch on the new fleet. Valid values are between `0` and `3600`.
  EndpointDeploymentConfigRollingUpdatePolicy({
    required this.maximumBatchSize,
    this.maximumExecutionTimeoutInSeconds,
    this.rollbackMaximumBatchSize,
    required this.waitIntervalInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximumBatchSize':
          pulumi.Input.mapInputValue<
            EndpointDeploymentConfigRollingUpdatePolicyMaximumBatchSize,
            Map<String, dynamic>
          >(maximumBatchSize, (value) => value.toMap()),
      'maximumExecutionTimeoutInSeconds': ?maximumExecutionTimeoutInSeconds,
      'rollbackMaximumBatchSize':
          ?pulumi.Input.mapOptionalInputValue<
            EndpointDeploymentConfigRollingUpdatePolicyRollbackMaximumBatchSize,
            Map<String, dynamic>
          >(rollbackMaximumBatchSize, (value) => value.toMap()),
      'waitIntervalInSeconds': waitIntervalInSeconds,
    };
  }

  factory EndpointDeploymentConfigRollingUpdatePolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return EndpointDeploymentConfigRollingUpdatePolicy(
      maximumBatchSize: pulumi.Input.fromValue(
        EndpointDeploymentConfigRollingUpdatePolicyMaximumBatchSize.fromMap(
          (map['maximumBatchSize']! as Map).cast<String, dynamic>(),
        ),
      ),
      maximumExecutionTimeoutInSeconds: (() {
        final guardedValue = map['maximumExecutionTimeoutInSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      rollbackMaximumBatchSize: (() {
        final guardedValue = map['rollbackMaximumBatchSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EndpointDeploymentConfigRollingUpdatePolicyRollbackMaximumBatchSize.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      waitIntervalInSeconds: pulumi.Input.fromValue(
        map['waitIntervalInSeconds'] as int,
      ),
    );
  }
}
