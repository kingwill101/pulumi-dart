// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_mongo_dbresource_mongo_user_definition_args_doc}
/// Arguments for getMongoDBResourceMongoUserDefinition.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_mongo_dbresource_mongo_user_definition_args_doc}
class GetMongoDBResourceMongoUserDefinitionArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// The ID for the User Definition {dbName.userName}.
  final pulumi.Input<String> mongoUserDefinitionId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMongoDBResourceMongoUserDefinitionArgs].
  /// [accountName] Cosmos DB database account name.
  /// [mongoUserDefinitionId] The ID for the User Definition {dbName.userName}.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetMongoDBResourceMongoUserDefinitionArgs({
    required this.accountName,
    required this.mongoUserDefinitionId,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'mongoUserDefinitionId': mongoUserDefinitionId,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMongoDBResourceMongoUserDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetMongoDBResourceMongoUserDefinitionArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      mongoUserDefinitionId: pulumi.Input.fromValue(map['mongoUserDefinitionId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
