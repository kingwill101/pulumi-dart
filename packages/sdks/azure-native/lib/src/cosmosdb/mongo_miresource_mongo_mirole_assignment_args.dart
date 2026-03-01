// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_mongo_miresource_mongo_mirole_assignment_args_doc}
/// The set of arguments for MongoMIResourceMongoMIRoleAssignment.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_mongo_miresource_mongo_mirole_assignment_args_doc}
class MongoMIResourceMongoMIRoleAssignmentArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// The unique identifier for the associated AAD principal in the AAD graph to which access is being granted through this MongoMI Role Assignment. Tenant ID for the principal is inferred using the tenant associated with the subscription.
  final pulumi.Input<String>? principalId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The GUID for the Role Assignment.
  final pulumi.Input<String>? roleAssignmentId;
  /// The unique identifier for the associated Role Definition.
  final pulumi.Input<String>? roleDefinitionId;
  /// The data plane resource path for which access is being granted through this MongoMI Role Assignment.
  final pulumi.Input<String>? scope;

  /// Creates a new [MongoMIResourceMongoMIRoleAssignmentArgs].
  /// [accountName] Cosmos DB database account name.
  /// [principalId] The unique identifier for the associated AAD principal in the AAD graph to which access is being granted through this MongoMI Role Assignment. Tenant ID for the principal is inferred using the tenant associated with the subscription.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [roleAssignmentId] The GUID for the Role Assignment.
  /// [roleDefinitionId] The unique identifier for the associated Role Definition.
  /// [scope] The data plane resource path for which access is being granted through this MongoMI Role Assignment.
  MongoMIResourceMongoMIRoleAssignmentArgs({
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? principalId,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? roleAssignmentId,
    pulumi.Output<String>? roleDefinitionId,
    pulumi.Output<String>? scope,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      principalId = pulumi.Input.asOptionalInput<String>(principalId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      roleAssignmentId = pulumi.Input.asOptionalInput<String>(roleAssignmentId),
      roleDefinitionId = pulumi.Input.asOptionalInput<String>(roleDefinitionId),
      scope = pulumi.Input.asOptionalInput<String>(scope);

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

  factory MongoMIResourceMongoMIRoleAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return MongoMIResourceMongoMIRoleAssignmentArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      principalId: map['principalId'] == null ? null : pulumi.Output.create<String>(map['principalId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      roleAssignmentId: map['roleAssignmentId'] == null ? null : pulumi.Output.create<String>(map['roleAssignmentId'] as String),
      roleDefinitionId: map['roleDefinitionId'] == null ? null : pulumi.Output.create<String>(map['roleDefinitionId'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
    );
  }
}

