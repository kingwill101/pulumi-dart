// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_gremlin_resource_gremlin_role_definition_args_doc}
/// Arguments for getGremlinResourceGremlinRoleDefinition.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_gremlin_resource_gremlin_role_definition_args_doc}
class GetGremlinResourceGremlinRoleDefinitionArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The GUID for the Role Definition.
  final pulumi.Input<String> roleDefinitionId;

  /// Creates a new [GetGremlinResourceGremlinRoleDefinitionArgs].
  /// [accountName] Cosmos DB database account name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [roleDefinitionId] The GUID for the Role Definition.
  GetGremlinResourceGremlinRoleDefinitionArgs({
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

  factory GetGremlinResourceGremlinRoleDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetGremlinResourceGremlinRoleDefinitionArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      roleDefinitionId: pulumi.Output.create<String>(map['roleDefinitionId'] as String),
    );
  }
}

