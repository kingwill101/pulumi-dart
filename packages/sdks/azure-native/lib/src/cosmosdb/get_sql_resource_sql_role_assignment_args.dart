// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_sql_resource_sql_role_assignment_args_doc}
/// Arguments for getSqlResourceSqlRoleAssignment.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_sql_resource_sql_role_assignment_args_doc}
class GetSqlResourceSqlRoleAssignmentArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The GUID for the Role Assignment.
  final pulumi.Input<String> roleAssignmentId;

  /// Creates a new [GetSqlResourceSqlRoleAssignmentArgs].
  /// [accountName] Cosmos DB database account name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [roleAssignmentId] The GUID for the Role Assignment.
  GetSqlResourceSqlRoleAssignmentArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> roleAssignmentId,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      roleAssignmentId = pulumi.Input.asInput<String>(roleAssignmentId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
      'roleAssignmentId': roleAssignmentId,
    };
  }

  factory GetSqlResourceSqlRoleAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlResourceSqlRoleAssignmentArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      roleAssignmentId: pulumi.Output.create<String>(map['roleAssignmentId'] as String),
    );
  }
}

