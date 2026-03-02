// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_group_blue_green_deployment_config_deployment_ready_option.dart';
import 'deployment_group_blue_green_deployment_config_green_fleet_provisioning_option.dart';
import 'deployment_group_blue_green_deployment_config_terminate_blue_instances_on_deployment_success.dart';

class DeploymentGroupBlueGreenDeploymentConfig {
  /// Information about the action to take when newly provisioned instances are ready to receive traffic in a blue/green deployment (documented below).
  final pulumi.Input<DeploymentGroupBlueGreenDeploymentConfigDeploymentReadyOption>? deploymentReadyOption;
  /// Information about how instances are provisioned for a replacement environment in a blue/green deployment (documented below).
  final pulumi.Input<DeploymentGroupBlueGreenDeploymentConfigGreenFleetProvisioningOption>? greenFleetProvisioningOption;
  /// Information about whether to terminate instances in the original fleet during a blue/green deployment (documented below).
  ///
  /// _Only one `blue_green_deployment_config` is allowed_.
  final pulumi.Input<DeploymentGroupBlueGreenDeploymentConfigTerminateBlueInstancesOnDeploymentSuccess>? terminateBlueInstancesOnDeploymentSuccess;

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
      'deploymentReadyOption': ?pulumi.Input.mapOptionalInputValue<DeploymentGroupBlueGreenDeploymentConfigDeploymentReadyOption, Map<String, dynamic>>(deploymentReadyOption, (value) => value.toMap()),
      'greenFleetProvisioningOption': ?pulumi.Input.mapOptionalInputValue<DeploymentGroupBlueGreenDeploymentConfigGreenFleetProvisioningOption, Map<String, dynamic>>(greenFleetProvisioningOption, (value) => value.toMap()),
      'terminateBlueInstancesOnDeploymentSuccess': ?pulumi.Input.mapOptionalInputValue<DeploymentGroupBlueGreenDeploymentConfigTerminateBlueInstancesOnDeploymentSuccess, Map<String, dynamic>>(terminateBlueInstancesOnDeploymentSuccess, (value) => value.toMap()),
    };
  }

  factory DeploymentGroupBlueGreenDeploymentConfig.fromMap(Map<String, dynamic> map) {
    return DeploymentGroupBlueGreenDeploymentConfig(
      deploymentReadyOption: map['deploymentReadyOption'] == null ? null : ((DeploymentGroupBlueGreenDeploymentConfigDeploymentReadyOption.fromMap((map['deploymentReadyOption']! as Map).cast<String, dynamic>())).input()).input(),
      greenFleetProvisioningOption: map['greenFleetProvisioningOption'] == null ? null : ((DeploymentGroupBlueGreenDeploymentConfigGreenFleetProvisioningOption.fromMap((map['greenFleetProvisioningOption']! as Map).cast<String, dynamic>())).input()).input(),
      terminateBlueInstancesOnDeploymentSuccess: map['terminateBlueInstancesOnDeploymentSuccess'] == null ? null : ((DeploymentGroupBlueGreenDeploymentConfigTerminateBlueInstancesOnDeploymentSuccess.fromMap((map['terminateBlueInstancesOnDeploymentSuccess']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

