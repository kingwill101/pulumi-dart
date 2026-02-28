// ignore_for_file: unused_element, unnecessary_cast

import 'endpoint_deployment_config_auto_rollback_configuration.dart';
import 'endpoint_deployment_config_blue_green_update_policy.dart';
import 'endpoint_deployment_config_rolling_update_policy.dart';

class EndpointDeploymentConfig {
  /// Automatic rollback configuration for handling endpoint deployment failures and recovery. See Auto Rollback Configuration.
  final EndpointDeploymentConfigAutoRollbackConfiguration? autoRollbackConfiguration;
  /// Update policy for a blue/green deployment. If this update policy is specified, SageMaker AI creates a new fleet during the deployment while maintaining the old fleet. SageMaker AI flips traffic to the new fleet according to the specified traffic routing configuration. Only one update policy should be used in the deployment configuration. If no update policy is specified, SageMaker AI uses a blue/green deployment strategy with all at once traffic shifting by default. See Blue Green Update Config.
  final EndpointDeploymentConfigBlueGreenUpdatePolicy? blueGreenUpdatePolicy;
  /// Specifies a rolling deployment strategy for updating a SageMaker AI endpoint. See Rolling Update Policy.
  final EndpointDeploymentConfigRollingUpdatePolicy? rollingUpdatePolicy;

  /// Creates a new [EndpointDeploymentConfig].
  /// [autoRollbackConfiguration] Automatic rollback configuration for handling endpoint deployment failures and recovery. See Auto Rollback Configuration.
  /// [blueGreenUpdatePolicy] Update policy for a blue/green deployment. If this update policy is specified, SageMaker AI creates a new fleet during the deployment while maintaining the old fleet. SageMaker AI flips traffic to the new fleet according to the specified traffic routing configuration. Only one update policy should be used in the deployment configuration. If no update policy is specified, SageMaker AI uses a blue/green deployment strategy with all at once traffic shifting by default. See Blue Green Update Config.
  /// [rollingUpdatePolicy] Specifies a rolling deployment strategy for updating a SageMaker AI endpoint. See Rolling Update Policy.
  EndpointDeploymentConfig({
    this.autoRollbackConfiguration,
    this.blueGreenUpdatePolicy,
    this.rollingUpdatePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRollbackConfiguration': ?autoRollbackConfiguration == null ? null : autoRollbackConfiguration!.toMap(),
      'blueGreenUpdatePolicy': ?blueGreenUpdatePolicy == null ? null : blueGreenUpdatePolicy!.toMap(),
      'rollingUpdatePolicy': ?rollingUpdatePolicy == null ? null : rollingUpdatePolicy!.toMap(),
    };
  }

  factory EndpointDeploymentConfig.fromMap(Map<String, dynamic> map) {
    return EndpointDeploymentConfig(
      autoRollbackConfiguration: map['autoRollbackConfiguration'] == null ? null : EndpointDeploymentConfigAutoRollbackConfiguration.fromMap((map['autoRollbackConfiguration'] as Map).cast<String, dynamic>()),
      blueGreenUpdatePolicy: map['blueGreenUpdatePolicy'] == null ? null : EndpointDeploymentConfigBlueGreenUpdatePolicy.fromMap((map['blueGreenUpdatePolicy'] as Map).cast<String, dynamic>()),
      rollingUpdatePolicy: map['rollingUpdatePolicy'] == null ? null : EndpointDeploymentConfigRollingUpdatePolicy.fromMap((map['rollingUpdatePolicy'] as Map).cast<String, dynamic>()),
    );
  }
}

