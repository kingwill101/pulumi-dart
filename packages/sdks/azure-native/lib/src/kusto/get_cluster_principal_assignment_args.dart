// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_get_cluster_principal_assignment_args_doc}
/// Arguments for getClusterPrincipalAssignment.
/// {@endtemplate}
/// {@macro pulumi_kusto_get_cluster_principal_assignment_args_doc}
class GetClusterPrincipalAssignmentArgs {
  /// The name of the Kusto cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the Kusto principalAssignment.
  final pulumi.Input<String> principalAssignmentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetClusterPrincipalAssignmentArgs].
  /// [clusterName] The name of the Kusto cluster.
  /// [principalAssignmentName] The name of the Kusto principalAssignment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetClusterPrincipalAssignmentArgs({
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> principalAssignmentName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      principalAssignmentName = pulumi.Input.asInput<String>(principalAssignmentName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'principalAssignmentName': principalAssignmentName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetClusterPrincipalAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterPrincipalAssignmentArgs(
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      principalAssignmentName: pulumi.Output.create<String>(map['principalAssignmentName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

