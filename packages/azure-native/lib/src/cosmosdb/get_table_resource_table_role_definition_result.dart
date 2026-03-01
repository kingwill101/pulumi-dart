// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'permission_response.dart';
import 'system_data_response.dart';

/// Result data returned by getTableResourceTableRoleDefinition.
class GetTableResourceTableRoleDefinitionResult {
  /// A set of fully qualified Scopes at or below which Table Role Assignments may be created using this Role Definition. This will allow application of this Role Definition on the entire database account or any underlying Database / Collection. Must have at least one element. Scopes higher than Database account are not enforceable as assignable Scopes. Note that resources referenced in assignable Scopes need not exist.
  final List<String>? assignableScopes;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// The set of operations allowed through this Role Definition.
  final List<PermissionResponse>? permissions;
  /// A user-friendly name for the Role Definition. Must be unique for the database account.
  final String? roleName;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetTableResourceTableRoleDefinitionResult].
  /// [assignableScopes] A set of fully qualified Scopes at or below which Table Role Assignments may be created using this Role Definition. This will allow application of this Role Definition on the entire database account or any underlying Database / Collection. Must have at least one element. Scopes higher than Database account are not enforceable as assignable Scopes. Note that resources referenced in assignable Scopes need not exist.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [permissions] The set of operations allowed through this Role Definition.
  /// [roleName] A user-friendly name for the Role Definition. Must be unique for the database account.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetTableResourceTableRoleDefinitionResult({
    this.assignableScopes,
    required this.azureApiVersion,
    required this.id,
    required this.name,
    this.permissions,
    this.roleName,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignableScopes': ?assignableScopes,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'permissions': ?permissions == null ? null : pulumi.Input.encodeList<PermissionResponse, Map<String, dynamic>>(permissions!, (value) => value.toMap()),
      'roleName': ?roleName,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetTableResourceTableRoleDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetTableResourceTableRoleDefinitionResult(
      assignableScopes: map['assignableScopes'] == null ? null : (map['assignableScopes'] as List).cast<String>(),
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      permissions: map['permissions'] == null ? null : pulumi.Input.decodeList<PermissionResponse>(map['permissions'], (value) => PermissionResponse.fromMap((value as Map).cast<String, dynamic>())),
      roleName: map['roleName'] == null ? null : map['roleName'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

