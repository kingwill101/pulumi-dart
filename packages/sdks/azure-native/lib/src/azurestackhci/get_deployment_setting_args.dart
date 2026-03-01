// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_get_deployment_setting_args_doc}
/// Arguments for getDeploymentSetting.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_get_deployment_setting_args_doc}
class GetDeploymentSettingArgs {
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// Name of Deployment Setting
  final pulumi.Input<String> deploymentSettingsName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDeploymentSettingArgs].
  /// [clusterName] The name of the cluster.
  /// [deploymentSettingsName] Name of Deployment Setting
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDeploymentSettingArgs({
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> deploymentSettingsName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      deploymentSettingsName = pulumi.Input.asInput<String>(deploymentSettingsName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'deploymentSettingsName': deploymentSettingsName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDeploymentSettingArgs.fromMap(Map<String, dynamic> map) {
    return GetDeploymentSettingArgs(
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      deploymentSettingsName: pulumi.Output.create<String>(map['deploymentSettingsName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

