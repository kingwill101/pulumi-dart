// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_mongo_dbresource_mongo_role_definition_args_doc}
/// Arguments for getMongoDBResourceMongoRoleDefinition.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_mongo_dbresource_mongo_role_definition_args_doc}
class GetMongoDBResourceMongoRoleDefinitionArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// The ID for the Role Definition {dbName.roleName}.
  final pulumi.Input<String> mongoRoleDefinitionId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMongoDBResourceMongoRoleDefinitionArgs].
  /// [accountName] Cosmos DB database account name.
  /// [mongoRoleDefinitionId] The ID for the Role Definition {dbName.roleName}.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetMongoDBResourceMongoRoleDefinitionArgs({
    required this.accountName,
    required this.mongoRoleDefinitionId,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'mongoRoleDefinitionId': mongoRoleDefinitionId,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMongoDBResourceMongoRoleDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetMongoDBResourceMongoRoleDefinitionArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      mongoRoleDefinitionId: pulumi.Input.fromValue(map['mongoRoleDefinitionId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
