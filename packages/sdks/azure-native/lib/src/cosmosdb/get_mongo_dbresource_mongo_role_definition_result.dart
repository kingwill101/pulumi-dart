// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'privilege_response.dart';
import 'role_response.dart';

/// Result data returned by getMongoDBResourceMongoRoleDefinition.
class GetMongoDBResourceMongoRoleDefinitionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The database name for which access is being granted for this Role Definition.
  final String? databaseName;
  /// The unique resource identifier of the database account.
  final String? id;
  /// The name of the database account.
  final String? name;
  /// A set of privileges contained by the Role Definition. This will allow application of this Role Definition on the entire database account or any underlying Database / Collection. Scopes higher than Database are not enforceable as privilege.
  final List<PrivilegeResponse>? privileges;
  /// A user-friendly name for the Role Definition. Must be unique for the database account.
  final String? roleName;
  /// The set of roles inherited by this Role Definition.
  final List<RoleResponse>? roles;
  /// The type of Azure resource.
  final String? type;

  /// Creates a new [GetMongoDBResourceMongoRoleDefinitionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [databaseName] The database name for which access is being granted for this Role Definition.
  /// [id] The unique resource identifier of the database account.
  /// [name] The name of the database account.
  /// [privileges] A set of privileges contained by the Role Definition. This will allow application of this Role Definition on the entire database account or any underlying Database / Collection. Scopes higher than Database are not enforceable as privilege.
  /// [roleName] A user-friendly name for the Role Definition. Must be unique for the database account.
  /// [roles] The set of roles inherited by this Role Definition.
  /// [type] The type of Azure resource.
  const GetMongoDBResourceMongoRoleDefinitionResult({
    this.azureApiVersion,
    this.databaseName,
    this.id,
    this.name,
    this.privileges,
    this.roleName,
    this.roles,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'databaseName': ?databaseName,
      'id': ?id,
      'name': ?name,
      'privileges': ?(() { final guardedValue = privileges; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivilegeResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'roleName': ?roleName,
      'roles': ?(() { final guardedValue = roles; if (guardedValue == null) return null; return pulumi.Input.encodeList<RoleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
    };
  }

  factory GetMongoDBResourceMongoRoleDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetMongoDBResourceMongoRoleDefinitionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privileges: (() { final guardedValue = map['privileges']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivilegeResponse>(guardedValue, (value) => PrivilegeResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      roleName: (() { final guardedValue = map['roleName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RoleResponse>(guardedValue, (value) => RoleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
