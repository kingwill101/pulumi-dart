// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_configuration.dart';

/// {@template pulumi_azurestackhci_deployment_setting_args_doc}
/// The set of arguments for DeploymentSetting.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_deployment_setting_args_doc}
class DeploymentSettingArgs {
  /// Azure resource ids of Arc machines to be part of cluster.
  final pulumi.Input<List<String>> arcNodeResourceIds;
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// Scale units will contains list of deployment data
  final pulumi.Input<DeploymentConfiguration> deploymentConfiguration;
  /// The deployment mode for cluster deployment.
  final pulumi.Input<String> deploymentMode;
  /// Name of Deployment Setting
  final pulumi.Input<String>? deploymentSettingsName;
  /// The intended operation for a cluster.
  final pulumi.Input<String>? operationType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DeploymentSettingArgs].
  /// [arcNodeResourceIds] Azure resource ids of Arc machines to be part of cluster.
  /// [clusterName] The name of the cluster.
  /// [deploymentConfiguration] Scale units will contains list of deployment data
  /// [deploymentMode] The deployment mode for cluster deployment.
  /// [deploymentSettingsName] Name of Deployment Setting
  /// [operationType] The intended operation for a cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  DeploymentSettingArgs({
    required this.arcNodeResourceIds,
    required this.clusterName,
    required this.deploymentConfiguration,
    required this.deploymentMode,
    this.deploymentSettingsName,
    this.operationType,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcNodeResourceIds': arcNodeResourceIds,
      'clusterName': clusterName,
      'deploymentConfiguration': pulumi.Input.mapInputValue<DeploymentConfiguration, Map<String, dynamic>>(deploymentConfiguration, (value) => value.toMap()),
      'deploymentMode': deploymentMode,
      'deploymentSettingsName': ?deploymentSettingsName,
      'operationType': ?operationType,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DeploymentSettingArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentSettingArgs(
      arcNodeResourceIds: ((map['arcNodeResourceIds'] as List).cast<String>()).input(),
      clusterName: (map['clusterName'] as String).input(),
      deploymentConfiguration: (DeploymentConfiguration.fromMap((map['deploymentConfiguration'] as Map).cast<String, dynamic>())).input(),
      deploymentMode: (map['deploymentMode'] as String).input(),
      deploymentSettingsName: map['deploymentSettingsName'] == null ? null : (map['deploymentSettingsName'] as String).input(),
      operationType: map['operationType'] == null ? null : (map['operationType'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

