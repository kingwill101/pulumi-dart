// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_group_blue_green_deployment_config_deployment_ready_option.dart';
import 'deployment_group_blue_green_deployment_config_green_fleet_provisioning_option.dart';
import 'deployment_group_blue_green_deployment_config_terminate_blue_instances_on_deployment_success.dart';

class DeploymentGroupBlueGreenDeploymentConfig {
  /// Information about the action to take when newly provisioned instances are ready to receive traffic in a blue/green deployment (documented below).
  final DeploymentGroupBlueGreenDeploymentConfigDeploymentReadyOption?
  deploymentReadyOption;

  /// Information about how instances are provisioned for a replacement environment in a blue/green deployment (documented below).
  final DeploymentGroupBlueGreenDeploymentConfigGreenFleetProvisioningOption?
  greenFleetProvisioningOption;

  /// Information about whether to terminate instances in the original fleet during a blue/green deployment (documented below).
  ///
  /// _Only one `blue_green_deployment_config` is allowed_.
  final DeploymentGroupBlueGreenDeploymentConfigTerminateBlueInstancesOnDeploymentSuccess?
  terminateBlueInstancesOnDeploymentSuccess;

  /// Creates a new [DeploymentGroupBlueGreenDeploymentConfig].
  /// [deploymentReadyOption] Information about the action to take when newly provisioned instances are ready to receive traffic in a blue/green deployment (documented below).
  /// [greenFleetProvisioningOption] Information about how instances are provisioned for a replacement environment in a blue/green deployment (documented below).
  /// [terminateBlueInstancesOnDeploymentSuccess] Information about whether to terminate instances in the original fleet during a blue/green deployment (documented below).
  DeploymentGroupBlueGreenDeploymentConfig({
    this.deploymentReadyOption,
    this.greenFleetProvisioningOption,
    this.terminateBlueInstancesOnDeploymentSuccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentReadyOption': ?deploymentReadyOption == null
          ? null
          : deploymentReadyOption!.toMap(),
      'greenFleetProvisioningOption': ?greenFleetProvisioningOption == null
          ? null
          : greenFleetProvisioningOption!.toMap(),
      'terminateBlueInstancesOnDeploymentSuccess':
          ?terminateBlueInstancesOnDeploymentSuccess == null
          ? null
          : terminateBlueInstancesOnDeploymentSuccess!.toMap(),
    };
  }

  factory DeploymentGroupBlueGreenDeploymentConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeploymentGroupBlueGreenDeploymentConfig(
      deploymentReadyOption: map['deploymentReadyOption'] == null
          ? null
          : DeploymentGroupBlueGreenDeploymentConfigDeploymentReadyOption.fromMap(
              (map['deploymentReadyOption'] as Map).cast<String, dynamic>(),
            ),
      greenFleetProvisioningOption: map['greenFleetProvisioningOption'] == null
          ? null
          : DeploymentGroupBlueGreenDeploymentConfigGreenFleetProvisioningOption.fromMap(
              (map['greenFleetProvisioningOption'] as Map)
                  .cast<String, dynamic>(),
            ),
      terminateBlueInstancesOnDeploymentSuccess:
          map['terminateBlueInstancesOnDeploymentSuccess'] == null
          ? null
          : DeploymentGroupBlueGreenDeploymentConfigTerminateBlueInstancesOnDeploymentSuccess.fromMap(
              (map['terminateBlueInstancesOnDeploymentSuccess'] as Map)
                  .cast<String, dynamic>(),
            ),
    );
  }
}
