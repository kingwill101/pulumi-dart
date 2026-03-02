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
    required this.clusterName,
    required this.principalAssignmentName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'principalAssignmentName': principalAssignmentName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetClusterPrincipalAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterPrincipalAssignmentArgs(
      clusterName: (map['clusterName'] as String).input(),
      principalAssignmentName: (map['principalAssignmentName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

