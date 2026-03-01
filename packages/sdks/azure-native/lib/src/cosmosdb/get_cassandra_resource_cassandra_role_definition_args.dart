// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_cassandra_resource_cassandra_role_definition_args_doc}
/// Arguments for getCassandraResourceCassandraRoleDefinition.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_cassandra_resource_cassandra_role_definition_args_doc}
class GetCassandraResourceCassandraRoleDefinitionArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The GUID for the Role Definition.
  final pulumi.Input<String> roleDefinitionId;

  /// Creates a new [GetCassandraResourceCassandraRoleDefinitionArgs].
  /// [accountName] Cosmos DB database account name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [roleDefinitionId] The GUID for the Role Definition.
  GetCassandraResourceCassandraRoleDefinitionArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> roleDefinitionId,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      roleDefinitionId = pulumi.Input.asInput<String>(roleDefinitionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
      'roleDefinitionId': roleDefinitionId,
    };
  }

  factory GetCassandraResourceCassandraRoleDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetCassandraResourceCassandraRoleDefinitionArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      roleDefinitionId: pulumi.Output.create<String>(map['roleDefinitionId'] as String),
    );
  }
}

