// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deny_assignment_permission_response.dart';
import 'deny_assignment_principal_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDenyAssignment.
class GetDenyAssignmentResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The conditions on the deny assignment. This limits the resources it can be assigned to. e.g.: @Resource[Microsoft.Storage/storageAccounts/blobServices/containers:ContainerName] StringEqualsIgnoreCase 'foo_storage_container'
  final String? condition;
  /// Version of the condition.
  final String? conditionVersion;
  /// Id of the user who created the assignment
  final String? createdBy;
  /// Time it was created
  final String? createdOn;
  /// The effect of the deny assignment. 'enforced' blocks access, 'audit' logs without blocking.
  final String? denyAssignmentEffect;
  /// The display name of the deny assignment.
  final String? denyAssignmentName;
  /// The description of the deny assignment.
  final String? description;
  /// Determines if the deny assignment applies to child scopes. Default value is false.
  final bool? doNotApplyToChildScopes;
  /// Array of principals to which the deny assignment does not apply.
  final List<DenyAssignmentPrincipalResponse>? excludePrincipals;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Specifies whether this deny assignment was created by Azure and cannot be edited or deleted.
  final bool? isSystemProtected;
  /// The name of the resource
  final String? name;
  /// An array of permissions that are denied by the deny assignment.
  final List<DenyAssignmentPermissionResponse>? permissions;
  /// Array of principals to which the deny assignment applies.
  final List<DenyAssignmentPrincipalResponse>? principals;
  /// The deny assignment scope.
  final String? scope;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Id of the user who updated the assignment
  final String? updatedBy;
  /// Time it was updated
  final String? updatedOn;

  /// Creates a new [GetDenyAssignmentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [condition] The conditions on the deny assignment. This limits the resources it can be assigned to. e.g.: @Resource[Microsoft.Storage/storageAccounts/blobServices/containers:ContainerName] StringEqualsIgnoreCase 'foo_storage_container'
  /// [conditionVersion] Version of the condition.
  /// [createdBy] Id of the user who created the assignment
  /// [createdOn] Time it was created
  /// [denyAssignmentEffect] The effect of the deny assignment. 'enforced' blocks access, 'audit' logs without blocking.
  /// [denyAssignmentName] The display name of the deny assignment.
  /// [description] The description of the deny assignment.
  /// [doNotApplyToChildScopes] Determines if the deny assignment applies to child scopes. Default value is false.
  /// [excludePrincipals] Array of principals to which the deny assignment does not apply.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [isSystemProtected] Specifies whether this deny assignment was created by Azure and cannot be edited or deleted.
  /// [name] The name of the resource
  /// [permissions] An array of permissions that are denied by the deny assignment.
  /// [principals] Array of principals to which the deny assignment applies.
  /// [scope] The deny assignment scope.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updatedBy] Id of the user who updated the assignment
  /// [updatedOn] Time it was updated
  const GetDenyAssignmentResult({
    this.azureApiVersion,
    this.condition,
    this.conditionVersion,
    this.createdBy,
    this.createdOn,
    this.denyAssignmentEffect,
    this.denyAssignmentName,
    this.description,
    this.doNotApplyToChildScopes,
    this.excludePrincipals,
    this.id,
    this.isSystemProtected,
    this.name,
    this.permissions,
    this.principals,
    this.scope,
    this.systemData,
    this.type,
    this.updatedBy,
    this.updatedOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'condition': ?condition,
      'conditionVersion': ?conditionVersion,
      'createdBy': ?createdBy,
      'createdOn': ?createdOn,
      'denyAssignmentEffect': ?denyAssignmentEffect,
      'denyAssignmentName': ?denyAssignmentName,
      'description': ?description,
      'doNotApplyToChildScopes': ?doNotApplyToChildScopes,
      'excludePrincipals': ?(() { final guardedValue = excludePrincipals; if (guardedValue == null) return null; return pulumi.Input.encodeList<DenyAssignmentPrincipalResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'isSystemProtected': ?isSystemProtected,
      'name': ?name,
      'permissions': ?(() { final guardedValue = permissions; if (guardedValue == null) return null; return pulumi.Input.encodeList<DenyAssignmentPermissionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'principals': ?(() { final guardedValue = principals; if (guardedValue == null) return null; return pulumi.Input.encodeList<DenyAssignmentPrincipalResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'scope': ?scope,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'updatedBy': ?updatedBy,
      'updatedOn': ?updatedOn,
    };
  }

  factory GetDenyAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetDenyAssignmentResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      conditionVersion: (() { final guardedValue = map['conditionVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      denyAssignmentEffect: (() { final guardedValue = map['denyAssignmentEffect']; if (guardedValue == null) return null; return guardedValue as String; })(),
      denyAssignmentName: (() { final guardedValue = map['denyAssignmentName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      doNotApplyToChildScopes: (() { final guardedValue = map['doNotApplyToChildScopes']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      excludePrincipals: (() { final guardedValue = map['excludePrincipals']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DenyAssignmentPrincipalResponse>(guardedValue, (value) => DenyAssignmentPrincipalResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isSystemProtected: (() { final guardedValue = map['isSystemProtected']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DenyAssignmentPermissionResponse>(guardedValue, (value) => DenyAssignmentPermissionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      principals: (() { final guardedValue = map['principals']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DenyAssignmentPrincipalResponse>(guardedValue, (value) => DenyAssignmentPrincipalResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedBy: (() { final guardedValue = map['updatedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedOn: (() { final guardedValue = map['updatedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
