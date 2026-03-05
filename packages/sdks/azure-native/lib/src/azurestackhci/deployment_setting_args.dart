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
      arcNodeResourceIds: pulumi.Input.fromValue((map['arcNodeResourceIds'] as List).cast<String>()),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      deploymentConfiguration: pulumi.Input.fromValue(DeploymentConfiguration.fromMap((map['deploymentConfiguration']! as Map).cast<String, dynamic>())),
      deploymentMode: pulumi.Input.fromValue(map['deploymentMode'] as String),
      deploymentSettingsName: (() { final guardedValue = map['deploymentSettingsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationType: (() { final guardedValue = map['operationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

