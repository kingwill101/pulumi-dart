// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_mongo_miresource_mongo_mirole_assignment_args_doc}
/// Arguments for getMongoMIResourceMongoMIRoleAssignment.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_mongo_miresource_mongo_mirole_assignment_args_doc}
class GetMongoMIResourceMongoMIRoleAssignmentArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The GUID for the Role Assignment.
  final pulumi.Input<String> roleAssignmentId;

  /// Creates a new [GetMongoMIResourceMongoMIRoleAssignmentArgs].
  /// [accountName] Cosmos DB database account name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [roleAssignmentId] The GUID for the Role Assignment.
  const GetMongoMIResourceMongoMIRoleAssignmentArgs({
    required this.accountName,
    required this.resourceGroupName,
    required this.roleAssignmentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
      'roleAssignmentId': roleAssignmentId,
    };
  }

  factory GetMongoMIResourceMongoMIRoleAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetMongoMIResourceMongoMIRoleAssignmentArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      roleAssignmentId: pulumi.Input.fromValue(map['roleAssignmentId'] as String),
    );
  }
}

