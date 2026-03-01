// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabric_get_node_type_fault_simulation_args_doc}
/// Arguments for getNodeTypeFaultSimulation.
/// {@endtemplate}
/// {@macro pulumi_servicefabric_get_node_type_fault_simulation_args_doc}
class GetNodeTypeFaultSimulationArgs {
  /// The name of the cluster resource.
  final pulumi.Input<String> clusterName;
  /// The name of the node type.
  final pulumi.Input<String> nodeTypeName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// unique identifier for the fault simulation.
  final pulumi.Input<String> simulationId;

  /// Creates a new [GetNodeTypeFaultSimulationArgs].
  /// [clusterName] The name of the cluster resource.
  /// [nodeTypeName] The name of the node type.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [simulationId] unique identifier for the fault simulation.
  GetNodeTypeFaultSimulationArgs({
    required String clusterName,
    required String nodeTypeName,
    required String resourceGroupName,
    required String simulationId,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      nodeTypeName = pulumi.Input.asInput<String>(nodeTypeName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      simulationId = pulumi.Input.asInput<String>(simulationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'nodeTypeName': nodeTypeName,
      'resourceGroupName': resourceGroupName,
      'simulationId': simulationId,
    };
  }

  factory GetNodeTypeFaultSimulationArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeTypeFaultSimulationArgs(
      clusterName: map['clusterName'] as String,
      nodeTypeName: map['nodeTypeName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      simulationId: map['simulationId'] as String,
    );
  }
}

