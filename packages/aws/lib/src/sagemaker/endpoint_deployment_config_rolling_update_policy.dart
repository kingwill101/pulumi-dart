// ignore_for_file: unused_element, unnecessary_cast

import 'endpoint_deployment_config_rolling_update_policy_maximum_batch_size.dart';
import 'endpoint_deployment_config_rolling_update_policy_rollback_maximum_batch_size.dart';

class EndpointDeploymentConfigRollingUpdatePolicy {
  /// Batch size for each rolling step to provision capacity and turn on traffic on the new endpoint fleet, and terminate capacity on the old endpoint fleet. Value must be between 5% to 50% of the variant's total instance count. See Maximum Batch Size.
  final EndpointDeploymentConfigRollingUpdatePolicyMaximumBatchSize
  maximumBatchSize;

  /// The time limit for the total deployment. Exceeding this limit causes a timeout. Valid values are between `600` and `14400`.
  final int? maximumExecutionTimeoutInSeconds;

  /// Batch size for rollback to the old endpoint fleet. Each rolling step to provision capacity and turn on traffic on the old endpoint fleet, and terminate capacity on the new endpoint fleet. If this field is absent, the default value will be set to 100% of total capacity which means to bring up the whole capacity of the old fleet at once during rollback. See Rollback Maximum Batch Size.
  final EndpointDeploymentConfigRollingUpdatePolicyRollbackMaximumBatchSize?
  rollbackMaximumBatchSize;

  /// The length of the baking period, during which SageMaker AI monitors alarms for each batch on the new fleet. Valid values are between `0` and `3600`.
  final int waitIntervalInSeconds;

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
      'maximumBatchSize': maximumBatchSize.toMap(),
      'maximumExecutionTimeoutInSeconds': ?maximumExecutionTimeoutInSeconds,
      'rollbackMaximumBatchSize': ?rollbackMaximumBatchSize == null
          ? null
          : rollbackMaximumBatchSize!.toMap(),
      'waitIntervalInSeconds': waitIntervalInSeconds,
    };
  }

  factory EndpointDeploymentConfigRollingUpdatePolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return EndpointDeploymentConfigRollingUpdatePolicy(
      maximumBatchSize:
          EndpointDeploymentConfigRollingUpdatePolicyMaximumBatchSize.fromMap(
            (map['maximumBatchSize'] as Map).cast<String, dynamic>(),
          ),
      maximumExecutionTimeoutInSeconds:
          map['maximumExecutionTimeoutInSeconds'] == null
          ? null
          : map['maximumExecutionTimeoutInSeconds'] as int,
      rollbackMaximumBatchSize: map['rollbackMaximumBatchSize'] == null
          ? null
          : EndpointDeploymentConfigRollingUpdatePolicyRollbackMaximumBatchSize.fromMap(
              (map['rollbackMaximumBatchSize'] as Map).cast<String, dynamic>(),
            ),
      waitIntervalInSeconds: map['waitIntervalInSeconds'] as int,
    );
  }
}
