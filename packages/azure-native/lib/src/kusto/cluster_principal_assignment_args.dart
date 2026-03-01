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
  ClusterPrincipalAssignmentArgs({
    required String clusterName,
    String? principalAssignmentName,
    required String principalId,
    required String principalType,
    required String resourceGroupName,
    required String role,
    String? tenantId,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      principalAssignmentName = pulumi.Input.asOptionalInput<String>(principalAssignmentName),
      principalId = pulumi.Input.asInput<String>(principalId),
      principalType = pulumi.Input.asInput<String>(principalType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      role = pulumi.Input.asInput<String>(role),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

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
      clusterName: map['clusterName'] as String,
      principalAssignmentName: map['principalAssignmentName'] == null ? null : map['principalAssignmentName'] as String,
      principalId: map['principalId'] as String,
      principalType: map['principalType'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      role: map['role'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

