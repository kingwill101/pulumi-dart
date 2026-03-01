// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kubernetesconfiguration_get_extension_args_doc}
/// Arguments for getExtension.
/// {@endtemplate}
/// {@macro pulumi_kubernetesconfiguration_get_extension_args_doc}
class GetExtensionArgs {
  /// The name of the kubernetes cluster.
  final pulumi.Input<String> clusterName;
  /// The Kubernetes cluster resource name - i.e. managedClusters, connectedClusters, provisionedClusters.
  final pulumi.Input<String> clusterResourceName;
  /// The Kubernetes cluster RP - i.e. Microsoft.ContainerService, Microsoft.Kubernetes, Microsoft.HybridContainerService.
  final pulumi.Input<String> clusterRp;
  /// Name of the Extension.
  final pulumi.Input<String> extensionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetExtensionArgs].
  /// [clusterName] The name of the kubernetes cluster.
  /// [clusterResourceName] The Kubernetes cluster resource name - i.e. managedClusters, connectedClusters, provisionedClusters.
  /// [clusterRp] The Kubernetes cluster RP - i.e. Microsoft.ContainerService, Microsoft.Kubernetes, Microsoft.HybridContainerService.
  /// [extensionName] Name of the Extension.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetExtensionArgs({
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> clusterResourceName,
    required pulumi.Output<String> clusterRp,
    required pulumi.Output<String> extensionName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      clusterResourceName = pulumi.Input.asInput<String>(clusterResourceName),
      clusterRp = pulumi.Input.asInput<String>(clusterRp),
      extensionName = pulumi.Input.asInput<String>(extensionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'clusterResourceName': clusterResourceName,
      'clusterRp': clusterRp,
      'extensionName': extensionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExtensionArgs.fromMap(Map<String, dynamic> map) {
    return GetExtensionArgs(
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      clusterResourceName: pulumi.Output.create<String>(map['clusterResourceName'] as String),
      clusterRp: pulumi.Output.create<String>(map['clusterRp'] as String),
      extensionName: pulumi.Output.create<String>(map['extensionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

