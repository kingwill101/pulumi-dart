// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'permission_response.dart';
import 'system_data_response.dart';

/// Result data returned by getRoleDefinition.
class GetRoleDefinitionResult {
  /// Role definition assignable scopes.
  final List<String>? assignableScopes;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Id of the user who created the assignment
  final String? createdBy;
  /// Time it was created
  final String? createdOn;
  /// The role definition description.
  final String? description;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// Role definition permissions.
  final List<PermissionResponse>? permissions;
  /// The role name.
  final String? roleName;
  /// The role type.
  final String? roleType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Id of the user who updated the assignment
  final String? updatedBy;
  /// Time it was updated
  final String? updatedOn;

  /// Creates a new [GetRoleDefinitionResult].
  /// [assignableScopes] Role definition assignable scopes.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdBy] Id of the user who created the assignment
  /// [createdOn] Time it was created
  /// [description] The role definition description.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [permissions] Role definition permissions.
  /// [roleName] The role name.
  /// [roleType] The role type.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updatedBy] Id of the user who updated the assignment
  /// [updatedOn] Time it was updated
  const GetRoleDefinitionResult({
    this.assignableScopes,
    this.azureApiVersion,
    this.createdBy,
    this.createdOn,
    this.description,
    this.id,
    this.name,
    this.permissions,
    this.roleName,
    this.roleType,
    this.systemData,
    this.type,
    this.updatedBy,
    this.updatedOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignableScopes': ?assignableScopes,
      'azureApiVersion': ?azureApiVersion,
      'createdBy': ?createdBy,
      'createdOn': ?createdOn,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'permissions': ?(() { final guardedValue = permissions; if (guardedValue == null) return null; return pulumi.Input.encodeList<PermissionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'roleName': ?roleName,
      'roleType': ?roleType,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'updatedBy': ?updatedBy,
      'updatedOn': ?updatedOn,
    };
  }

  factory GetRoleDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetRoleDefinitionResult(
      assignableScopes: (() { final guardedValue = map['assignableScopes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PermissionResponse>(guardedValue, (value) => PermissionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      roleName: (() { final guardedValue = map['roleName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleType: (() { final guardedValue = map['roleType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedBy: (() { final guardedValue = map['updatedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedOn: (() { final guardedValue = map['updatedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
