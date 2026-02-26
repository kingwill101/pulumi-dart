// ignore_for_file: unused_element, unnecessary_cast

import '../deployment_group_blue_green_deployment_config_deployment_ready_option/deployment_group_blue_green_deployment_config_deployment_ready_option.dart';
import '../deployment_group_blue_green_deployment_config_green_fleet_provisioning_option/deployment_group_blue_green_deployment_config_green_fleet_provisioning_option.dart';
import '../deployment_group_blue_green_deployment_config_terminate_blue_instances_on_deployment_success/deployment_group_blue_green_deployment_config_terminate_blue_instances_on_deployment_success.dart';

class DeploymentGroupBlueGreenDeploymentConfig {
  /// Information about the action to take when newly provisioned instances are ready to receive traffic in a blue/green deployment (documented below).
  final DeploymentGroupBlueGreenDeploymentConfigDeploymentReadyOption?
      deploymentReadyOption;

  /// Information about how instances are provisioned for a replacement environment in a blue/green deployment (documented below).
  final DeploymentGroupBlueGreenDeploymentConfigGreenFleetProvisioningOption?
      greenFleetProvisioningOption;

  /// Information about whether to terminate instances in the original fleet during a blue/green deployment (documented below).
  ///
  /// _Only one <span pulumi-lang-nodejs="`blueGreenDeploymentConfig`" pulumi-lang-dotnet="`BlueGreenDeploymentConfig`" pulumi-lang-go="`blueGreenDeploymentConfig`" pulumi-lang-python="`blue_green_deployment_config`" pulumi-lang-yaml="`blueGreenDeploymentConfig`" pulumi-lang-java="`blueGreenDeploymentConfig`">`blue_green_deployment_config`</span> is allowed_.
  final DeploymentGroupBlueGreenDeploymentConfigTerminateBlueInstancesOnDeploymentSuccess?
      terminateBlueInstancesOnDeploymentSuccess;

  DeploymentGroupBlueGreenDeploymentConfig({
    this.deploymentReadyOption,
    this.greenFleetProvisioningOption,
    this.terminateBlueInstancesOnDeploymentSuccess,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deploymentReadyOptionValue = deploymentReadyOption;
    if (deploymentReadyOptionValue != null) {
      map['deploymentReadyOption'] = deploymentReadyOptionValue.toMap();
    }
    final greenFleetProvisioningOptionValue = greenFleetProvisioningOption;
    if (greenFleetProvisioningOptionValue != null) {
      map['greenFleetProvisioningOption'] =
          greenFleetProvisioningOptionValue.toMap();
    }
    final terminateBlueInstancesOnDeploymentSuccessValue =
        terminateBlueInstancesOnDeploymentSuccess;
    if (terminateBlueInstancesOnDeploymentSuccessValue != null) {
      map['terminateBlueInstancesOnDeploymentSuccess'] =
          terminateBlueInstancesOnDeploymentSuccessValue.toMap();
    }
    return map;
  }

  factory DeploymentGroupBlueGreenDeploymentConfig.fromMap(
      Map<String, dynamic> map) {
    return DeploymentGroupBlueGreenDeploymentConfig(
      deploymentReadyOption: map['deploymentReadyOption'] == null
          ? null
          : DeploymentGroupBlueGreenDeploymentConfigDeploymentReadyOption
              .fromMap((map['deploymentReadyOption'] as Map)
                  .cast<String, dynamic>()),
      greenFleetProvisioningOption: map['greenFleetProvisioningOption'] == null
          ? null
          : DeploymentGroupBlueGreenDeploymentConfigGreenFleetProvisioningOption
              .fromMap((map['greenFleetProvisioningOption'] as Map)
                  .cast<String, dynamic>()),
      terminateBlueInstancesOnDeploymentSuccess: map[
                  'terminateBlueInstancesOnDeploymentSuccess'] ==
              null
          ? null
          : DeploymentGroupBlueGreenDeploymentConfigTerminateBlueInstancesOnDeploymentSuccess
              .fromMap((map['terminateBlueInstancesOnDeploymentSuccess'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
