// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_cluster_principal_assignment_args_doc}
/// The set of arguments for ClusterPrincipalAssignment.
/// {@endtemplate}
/// {@macro pulumi_kusto_cluster_principal_assignment_args_doc}
class ClusterPrincipalAssignmentArgs {
  /// The name of the Kusto cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the Kusto principalAssignment.
  final pulumi.Input<String>? principalAssignmentName;
  /// The principal ID assigned to the cluster principal. It can be a user email, application ID, or security group name.
  final pulumi.Input<String> principalId;
  /// Principal type.
  final pulumi.Input<String> principalType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Cluster principal role.
  final pulumi.Input<String> role;
  /// The tenant id of the principal
  final pulumi.Input<String>? tenantId;

  /// Creates a new [ClusterPrincipalAssignmentArgs].
  /// [clusterName] The name of the Kusto cluster.
  /// [principalAssignmentName] The name of the Kusto principalAssignment.
  /// [principalId] The principal ID assigned to the cluster principal. It can be a user email, application ID, or security group name.
  /// [principalType] Principal type.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [role] Cluster principal role.
  /// [tenantId] The tenant id of the principal
  const ClusterPrincipalAssignmentArgs({
    required this.clusterName,
    this.principalAssignmentName,
    required this.principalId,
    required this.principalType,
    required this.resourceGroupName,
    required this.role,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'principalAssignmentName': ?principalAssignmentName,
      'principalId': principalId,
      'principalType': principalType,
      'resourceGroupName': resourceGroupName,
      'role': role,
      'tenantId': ?tenantId,
    };
  }

  factory ClusterPrincipalAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return ClusterPrincipalAssignmentArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      principalAssignmentName: (() { final guardedValue = map['principalAssignmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      principalType: pulumi.Input.fromValue(map['principalType'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      role: pulumi.Input.fromValue(map['role'] as String),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
