// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kubernetesconfiguration_get_flux_configuration_args_doc}
/// Arguments for getFluxConfiguration.
/// {@endtemplate}
/// {@macro pulumi_kubernetesconfiguration_get_flux_configuration_args_doc}
class GetFluxConfigurationArgs {
  /// The name of the kubernetes cluster.
  final pulumi.Input<String> clusterName;
  /// The Kubernetes cluster resource name - i.e. managedClusters, connectedClusters, provisionedClusters.
  final pulumi.Input<String> clusterResourceName;
  /// The Kubernetes cluster RP - i.e. Microsoft.ContainerService, Microsoft.Kubernetes, Microsoft.HybridContainerService.
  final pulumi.Input<String> clusterRp;
  /// Name of the Flux Configuration.
  final pulumi.Input<String> fluxConfigurationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFluxConfigurationArgs].
  /// [clusterName] The name of the kubernetes cluster.
  /// [clusterResourceName] The Kubernetes cluster resource name - i.e. managedClusters, connectedClusters, provisionedClusters.
  /// [clusterRp] The Kubernetes cluster RP - i.e. Microsoft.ContainerService, Microsoft.Kubernetes, Microsoft.HybridContainerService.
  /// [fluxConfigurationName] Name of the Flux Configuration.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetFluxConfigurationArgs({
    required String clusterName,
    required String clusterResourceName,
    required String clusterRp,
    required String fluxConfigurationName,
    required String resourceGroupName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      clusterResourceName = pulumi.Input.asInput<String>(clusterResourceName),
      clusterRp = pulumi.Input.asInput<String>(clusterRp),
      fluxConfigurationName = pulumi.Input.asInput<String>(fluxConfigurationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'clusterResourceName': clusterResourceName,
      'clusterRp': clusterRp,
      'fluxConfigurationName': fluxConfigurationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFluxConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetFluxConfigurationArgs(
      clusterName: map['clusterName'] as String,
      clusterResourceName: map['clusterResourceName'] as String,
      clusterRp: map['clusterRp'] as String,
      fluxConfigurationName: map['fluxConfigurationName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

