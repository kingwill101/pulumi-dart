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
    required this.clusterName,
    required this.deploymentSettingsName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'deploymentSettingsName': deploymentSettingsName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDeploymentSettingArgs.fromMap(Map<String, dynamic> map) {
    return GetDeploymentSettingArgs(
      clusterName: (map['clusterName'] as String).input(),
      deploymentSettingsName: (map['deploymentSettingsName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

