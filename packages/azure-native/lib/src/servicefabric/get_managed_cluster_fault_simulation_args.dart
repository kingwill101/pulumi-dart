// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabric_get_managed_cluster_fault_simulation_args_doc}
/// Arguments for getManagedClusterFaultSimulation.
/// {@endtemplate}
/// {@macro pulumi_servicefabric_get_managed_cluster_fault_simulation_args_doc}
class GetManagedClusterFaultSimulationArgs {
  /// The name of the cluster resource.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// unique identifier for the fault simulation.
  final pulumi.Input<String> simulationId;

  /// Creates a new [GetManagedClusterFaultSimulationArgs].
  /// [clusterName] The name of the cluster resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [simulationId] unique identifier for the fault simulation.
  GetManagedClusterFaultSimulationArgs({
    required String clusterName,
    required String resourceGroupName,
    required String simulationId,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      simulationId = pulumi.Input.asInput<String>(simulationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
      'simulationId': simulationId,
    };
  }

  factory GetManagedClusterFaultSimulationArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedClusterFaultSimulationArgs(
      clusterName: map['clusterName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      simulationId: map['simulationId'] as String,
    );
  }
}

