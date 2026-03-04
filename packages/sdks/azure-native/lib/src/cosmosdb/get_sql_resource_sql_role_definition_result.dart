// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'permission_response.dart';

/// Result data returned by getSqlResourceSqlRoleDefinition.
class GetSqlResourceSqlRoleDefinitionResult {
  /// A set of fully qualified Scopes at or below which Role Assignments may be created using this Role Definition. This will allow application of this Role Definition on the entire database account or any underlying Database / Collection. Must have at least one element. Scopes higher than Database account are not enforceable as assignable Scopes. Note that resources referenced in assignable Scopes need not exist.
  final List<String>? assignableScopes;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The unique resource identifier of the database account.
  final String id;

  /// The name of the database account.
  final String name;

  /// The set of operations allowed through this Role Definition.
  final List<PermissionResponse>? permissions;

  /// A user-friendly name for the Role Definition. Must be unique for the database account.
  final String? roleName;

  /// The type of Azure resource.
  final String type;

  /// Creates a new [GetSqlResourceSqlRoleDefinitionResult].
  /// [assignableScopes] A set of fully qualified Scopes at or below which Role Assignments may be created using this Role Definition. This will allow application of this Role Definition on the entire database account or any underlying Database / Collection. Must have at least one element. Scopes higher than Database account are not enforceable as assignable Scopes. Note that resources referenced in assignable Scopes need not exist.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The unique resource identifier of the database account.
  /// [name] The name of the database account.
  /// [permissions] The set of operations allowed through this Role Definition.
  /// [roleName] A user-friendly name for the Role Definition. Must be unique for the database account.
  /// [type] The type of Azure resource.
  GetSqlResourceSqlRoleDefinitionResult({
    this.assignableScopes,
    required this.azureApiVersion,
    required this.id,
    required this.name,
    this.permissions,
    this.roleName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignableScopes': ?assignableScopes,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'permissions': ?(() {
        final guardedValue = permissions;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          PermissionResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'roleName': ?roleName,
      'type': type,
    };
  }

  factory GetSqlResourceSqlRoleDefinitionResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetSqlResourceSqlRoleDefinitionResult(
      assignableScopes: (() {
        final guardedValue = map['assignableScopes'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      permissions: (() {
        final guardedValue = map['permissions'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<PermissionResponse>(
          guardedValue,
          (value) => PermissionResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      roleName: (() {
        final guardedValue = map['roleName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      type: map['type'] as String,
    );
  }
}
