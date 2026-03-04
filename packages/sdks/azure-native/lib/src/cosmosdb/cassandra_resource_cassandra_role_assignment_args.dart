// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_cassandra_resource_cassandra_role_assignment_args_doc}
/// The set of arguments for CassandraResourceCassandraRoleAssignment.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_cassandra_resource_cassandra_role_assignment_args_doc}
class CassandraResourceCassandraRoleAssignmentArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;

  /// The unique identifier for the associated AAD principal in the AAD graph to which access is being granted through this Cassandra Role Assignment. Tenant ID for the principal is inferred using the tenant associated with the subscription.
  final pulumi.Input<String>? principalId;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The GUID for the Role Assignment.
  final pulumi.Input<String>? roleAssignmentId;

  /// The unique identifier for the associated Role Definition.
  final pulumi.Input<String>? roleDefinitionId;

  /// The data plane resource path for which access is being granted through this Cassandra Role Assignment.
  final pulumi.Input<String>? scope;

  /// Creates a new [CassandraResourceCassandraRoleAssignmentArgs].
  /// [accountName] Cosmos DB database account name.
  /// [principalId] The unique identifier for the associated AAD principal in the AAD graph to which access is being granted through this Cassandra Role Assignment. Tenant ID for the principal is inferred using the tenant associated with the subscription.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [roleAssignmentId] The GUID for the Role Assignment.
  /// [roleDefinitionId] The unique identifier for the associated Role Definition.
  /// [scope] The data plane resource path for which access is being granted through this Cassandra Role Assignment.
  CassandraResourceCassandraRoleAssignmentArgs({
    required this.accountName,
    this.principalId,
    required this.resourceGroupName,
    this.roleAssignmentId,
    this.roleDefinitionId,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'principalId': ?principalId,
      'resourceGroupName': resourceGroupName,
      'roleAssignmentId': ?roleAssignmentId,
      'roleDefinitionId': ?roleDefinitionId,
      'scope': ?scope,
    };
  }

  factory CassandraResourceCassandraRoleAssignmentArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return CassandraResourceCassandraRoleAssignmentArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      principalId: (() {
        final guardedValue = map['principalId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      roleAssignmentId: (() {
        final guardedValue = map['roleAssignmentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roleDefinitionId: (() {
        final guardedValue = map['roleDefinitionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scope: (() {
        final guardedValue = map['scope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
