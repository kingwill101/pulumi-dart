// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kubernetesconfiguration_get_source_control_configuration_args_doc}
/// Arguments for getSourceControlConfiguration.
/// {@endtemplate}
/// {@macro pulumi_kubernetesconfiguration_get_source_control_configuration_args_doc}
class GetSourceControlConfigurationArgs {
  /// The name of the kubernetes cluster.
  final pulumi.Input<String> clusterName;
  /// The Kubernetes cluster resource name - i.e. managedClusters, connectedClusters, provisionedClusters.
  final pulumi.Input<String> clusterResourceName;
  /// The Kubernetes cluster RP - i.e. Microsoft.ContainerService, Microsoft.Kubernetes, Microsoft.HybridContainerService.
  final pulumi.Input<String> clusterRp;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the Source Control Configuration.
  final pulumi.Input<String> sourceControlConfigurationName;

  /// Creates a new [GetSourceControlConfigurationArgs].
  /// [clusterName] The name of the kubernetes cluster.
  /// [clusterResourceName] The Kubernetes cluster resource name - i.e. managedClusters, connectedClusters, provisionedClusters.
  /// [clusterRp] The Kubernetes cluster RP - i.e. Microsoft.ContainerService, Microsoft.Kubernetes, Microsoft.HybridContainerService.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sourceControlConfigurationName] Name of the Source Control Configuration.
  const GetSourceControlConfigurationArgs({
    required this.clusterName,
    required this.clusterResourceName,
    required this.clusterRp,
    required this.resourceGroupName,
    required this.sourceControlConfigurationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'clusterResourceName': clusterResourceName,
      'clusterRp': clusterRp,
      'resourceGroupName': resourceGroupName,
      'sourceControlConfigurationName': sourceControlConfigurationName,
    };
  }

  factory GetSourceControlConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetSourceControlConfigurationArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      clusterResourceName: pulumi.Input.fromValue(map['clusterResourceName'] as String),
      clusterRp: pulumi.Input.fromValue(map['clusterRp'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sourceControlConfigurationName: pulumi.Input.fromValue(map['sourceControlConfigurationName'] as String),
    );
  }
}

