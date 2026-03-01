// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_mongo_miresource_mongo_mirole_definition_args_doc}
/// Arguments for getMongoMIResourceMongoMIRoleDefinition.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_mongo_miresource_mongo_mirole_definition_args_doc}
class GetMongoMIResourceMongoMIRoleDefinitionArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The GUID for the Role Definition.
  final pulumi.Input<String> roleDefinitionId;

  /// Creates a new [GetMongoMIResourceMongoMIRoleDefinitionArgs].
  /// [accountName] Cosmos DB database account name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [roleDefinitionId] The GUID for the Role Definition.
  GetMongoMIResourceMongoMIRoleDefinitionArgs({
    required String accountName,
    required String resourceGroupName,
    required String roleDefinitionId,
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

  factory GetMongoMIResourceMongoMIRoleDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetMongoMIResourceMongoMIRoleDefinitionArgs(
      accountName: map['accountName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      roleDefinitionId: map['roleDefinitionId'] as String,
    );
  }
}

