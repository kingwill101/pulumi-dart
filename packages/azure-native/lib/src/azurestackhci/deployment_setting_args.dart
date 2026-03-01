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
    required List<String> arcNodeResourceIds,
    required String clusterName,
    required DeploymentConfiguration deploymentConfiguration,
    required String deploymentMode,
    String? deploymentSettingsName,
    String? operationType,
    required String resourceGroupName,
  }) :
      arcNodeResourceIds = pulumi.Input.asInput<List<String>>(arcNodeResourceIds),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      deploymentConfiguration = pulumi.Input.asInput<DeploymentConfiguration>(deploymentConfiguration),
      deploymentMode = pulumi.Input.asInput<String>(deploymentMode),
      deploymentSettingsName = pulumi.Input.asOptionalInput<String>(deploymentSettingsName),
      operationType = pulumi.Input.asOptionalInput<String>(operationType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      arcNodeResourceIds: (map['arcNodeResourceIds'] as List).cast<String>(),
      clusterName: map['clusterName'] as String,
      deploymentConfiguration: DeploymentConfiguration.fromMap((map['deploymentConfiguration'] as Map).cast<String, dynamic>()),
      deploymentMode: map['deploymentMode'] as String,
      deploymentSettingsName: map['deploymentSettingsName'] == null ? null : map['deploymentSettingsName'] as String,
      operationType: map['operationType'] == null ? null : map['operationType'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

