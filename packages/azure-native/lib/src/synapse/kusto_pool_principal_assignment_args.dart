// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_kusto_pool_principal_assignment_args_doc}
/// The set of arguments for KustoPoolPrincipalAssignment.
/// {@endtemplate}
/// {@macro pulumi_synapse_kusto_pool_principal_assignment_args_doc}
class KustoPoolPrincipalAssignmentArgs {
  /// The name of the Kusto pool.
  final pulumi.Input<String> kustoPoolName;
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
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [KustoPoolPrincipalAssignmentArgs].
  /// [kustoPoolName] The name of the Kusto pool.
  /// [principalAssignmentName] The name of the Kusto principalAssignment.
  /// [principalId] The principal ID assigned to the cluster principal. It can be a user email, application ID, or security group name.
  /// [principalType] Principal type.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [role] Cluster principal role.
  /// [tenantId] The tenant id of the principal
  /// [workspaceName] The name of the workspace.
  KustoPoolPrincipalAssignmentArgs({
    required String kustoPoolName,
    String? principalAssignmentName,
    required String principalId,
    required String principalType,
    required String resourceGroupName,
    required String role,
    String? tenantId,
    required String workspaceName,
  }) :
      kustoPoolName = pulumi.Input.asInput<String>(kustoPoolName),
      principalAssignmentName = pulumi.Input.asOptionalInput<String>(principalAssignmentName),
      principalId = pulumi.Input.asInput<String>(principalId),
      principalType = pulumi.Input.asInput<String>(principalType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      role = pulumi.Input.asInput<String>(role),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kustoPoolName': kustoPoolName,
      'principalAssignmentName': ?principalAssignmentName,
      'principalId': principalId,
      'principalType': principalType,
      'resourceGroupName': resourceGroupName,
      'role': role,
      'tenantId': ?tenantId,
      'workspaceName': workspaceName,
    };
  }

  factory KustoPoolPrincipalAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return KustoPoolPrincipalAssignmentArgs(
      kustoPoolName: map['kustoPoolName'] as String,
      principalAssignmentName: map['principalAssignmentName'] == null ? null : map['principalAssignmentName'] as String,
      principalId: map['principalId'] as String,
      principalType: map['principalType'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      role: map['role'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

