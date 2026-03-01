// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'permission_response.dart';

/// Result data returned by getRoleDefinition.
class GetRoleDefinitionResult {
  /// Role definition assignable scopes.
  final List<String>? assignableScopes;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Id of the user who created the assignment
  final String createdBy;
  /// Time it was created
  final String createdOn;
  /// The role definition description.
  final String? description;
  /// The role definition ID.
  final String id;
  /// The role definition name.
  final String name;
  /// Role definition permissions.
  final List<PermissionResponse>? permissions;
  /// The role name.
  final String? roleName;
  /// The role type.
  final String? roleType;
  /// The role definition type.
  final String type;
  /// Id of the user who updated the assignment
  final String updatedBy;
  /// Time it was updated
  final String updatedOn;

  /// Creates a new [GetRoleDefinitionResult].
  /// [assignableScopes] Role definition assignable scopes.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdBy] Id of the user who created the assignment
  /// [createdOn] Time it was created
  /// [description] The role definition description.
  /// [id] The role definition ID.
  /// [name] The role definition name.
  /// [permissions] Role definition permissions.
  /// [roleName] The role name.
  /// [roleType] The role type.
  /// [type] The role definition type.
  /// [updatedBy] Id of the user who updated the assignment
  /// [updatedOn] Time it was updated
  GetRoleDefinitionResult({
    this.assignableScopes,
    required this.azureApiVersion,
    required this.createdBy,
    required this.createdOn,
    this.description,
    required this.id,
    required this.name,
    this.permissions,
    this.roleName,
    this.roleType,
    required this.type,
    required this.updatedBy,
    required this.updatedOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignableScopes': ?assignableScopes,
      'azureApiVersion': azureApiVersion,
      'createdBy': createdBy,
      'createdOn': createdOn,
      'description': ?description,
      'id': id,
      'name': name,
      'permissions': ?permissions == null ? null : pulumi.Input.encodeList<PermissionResponse, Map<String, dynamic>>(permissions!, (value) => value.toMap()),
      'roleName': ?roleName,
      'roleType': ?roleType,
      'type': type,
      'updatedBy': updatedBy,
      'updatedOn': updatedOn,
    };
  }

  factory GetRoleDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetRoleDefinitionResult(
      assignableScopes: map['assignableScopes'] == null ? null : (map['assignableScopes'] as List).cast<String>(),
      azureApiVersion: map['azureApiVersion'] as String,
      createdBy: map['createdBy'] as String,
      createdOn: map['createdOn'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      permissions: map['permissions'] == null ? null : pulumi.Input.decodeList<PermissionResponse>(map['permissions'], (value) => PermissionResponse.fromMap((value as Map).cast<String, dynamic>())),
      roleName: map['roleName'] == null ? null : map['roleName'] as String,
      roleType: map['roleType'] == null ? null : map['roleType'] as String,
      type: map['type'] as String,
      updatedBy: map['updatedBy'] as String,
      updatedOn: map['updatedOn'] as String,
    );
  }
}

