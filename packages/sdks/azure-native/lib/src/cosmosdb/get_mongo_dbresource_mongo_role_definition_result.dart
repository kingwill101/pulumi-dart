// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'privilege_response.dart';
import 'role_response.dart';

/// Result data returned by getMongoDBResourceMongoRoleDefinition.
class GetMongoDBResourceMongoRoleDefinitionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The database name for which access is being granted for this Role Definition.
  final String? databaseName;
  /// The unique resource identifier of the database account.
  final String id;
  /// The name of the database account.
  final String name;
  /// A set of privileges contained by the Role Definition. This will allow application of this Role Definition on the entire database account or any underlying Database / Collection. Scopes higher than Database are not enforceable as privilege.
  final List<PrivilegeResponse>? privileges;
  /// A user-friendly name for the Role Definition. Must be unique for the database account.
  final String? roleName;
  /// The set of roles inherited by this Role Definition.
  final List<RoleResponse>? roles;
  /// The type of Azure resource.
  final String type;

  /// Creates a new [GetMongoDBResourceMongoRoleDefinitionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [databaseName] The database name for which access is being granted for this Role Definition.
  /// [id] The unique resource identifier of the database account.
  /// [name] The name of the database account.
  /// [privileges] A set of privileges contained by the Role Definition. This will allow application of this Role Definition on the entire database account or any underlying Database / Collection. Scopes higher than Database are not enforceable as privilege.
  /// [roleName] A user-friendly name for the Role Definition. Must be unique for the database account.
  /// [roles] The set of roles inherited by this Role Definition.
  /// [type] The type of Azure resource.
  GetMongoDBResourceMongoRoleDefinitionResult({
    required this.azureApiVersion,
    this.databaseName,
    required this.id,
    required this.name,
    this.privileges,
    this.roleName,
    this.roles,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'databaseName': ?databaseName,
      'id': id,
      'name': name,
      'privileges': ?privileges == null ? null : pulumi.Input.encodeList<PrivilegeResponse, Map<String, dynamic>>(privileges!, (value) => value.toMap()),
      'roleName': ?roleName,
      'roles': ?roles == null ? null : pulumi.Input.encodeList<RoleResponse, Map<String, dynamic>>(roles!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetMongoDBResourceMongoRoleDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetMongoDBResourceMongoRoleDefinitionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      databaseName: map['databaseName'] == null ? null : map['databaseName']! as String,
      id: map['id'] as String,
      name: map['name'] as String,
      privileges: map['privileges'] == null ? null : pulumi.Input.decodeList<PrivilegeResponse>(map['privileges']!, (value) => PrivilegeResponse.fromMap((value as Map).cast<String, dynamic>())),
      roleName: map['roleName'] == null ? null : map['roleName']! as String,
      roles: map['roles'] == null ? null : pulumi.Input.decodeList<RoleResponse>(map['roles']!, (value) => RoleResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

