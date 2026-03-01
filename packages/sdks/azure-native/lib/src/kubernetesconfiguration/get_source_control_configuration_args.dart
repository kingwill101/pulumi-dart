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
  GetSourceControlConfigurationArgs({
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> clusterResourceName,
    required pulumi.Output<String> clusterRp,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sourceControlConfigurationName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      clusterResourceName = pulumi.Input.asInput<String>(clusterResourceName),
      clusterRp = pulumi.Input.asInput<String>(clusterRp),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sourceControlConfigurationName = pulumi.Input.asInput<String>(sourceControlConfigurationName);

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
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      clusterResourceName: pulumi.Output.create<String>(map['clusterResourceName'] as String),
      clusterRp: pulumi.Output.create<String>(map['clusterRp'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sourceControlConfigurationName: pulumi.Output.create<String>(map['sourceControlConfigurationName'] as String),
    );
  }
}

