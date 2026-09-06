// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getGremlinResourceGremlinRoleAssignment.
class GetGremlinResourceGremlinRoleAssignmentResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// The unique identifier for the associated AAD principal in the AAD graph to which access is being granted through this Gremlin Role Assignment. Tenant ID for the principal is inferred using the tenant associated with the subscription.
  final String? principalId;
  /// Provisioning state of the resource.
  final String? provisioningState;
  /// The unique identifier for the associated Role Definition.
  final String? roleDefinitionId;
  /// The data plane resource path for which access is being granted through this Gremlin Role Assignment.
  final String? scope;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetGremlinResourceGremlinRoleAssignmentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [principalId] The unique identifier for the associated AAD principal in the AAD graph to which access is being granted through this Gremlin Role Assignment. Tenant ID for the principal is inferred using the tenant associated with the subscription.
  /// [provisioningState] Provisioning state of the resource.
  /// [roleDefinitionId] The unique identifier for the associated Role Definition.
  /// [scope] The data plane resource path for which access is being granted through this Gremlin Role Assignment.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetGremlinResourceGremlinRoleAssignmentResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.principalId,
    this.provisioningState,
    this.roleDefinitionId,
    this.scope,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'principalId': ?principalId,
      'provisioningState': ?provisioningState,
      'roleDefinitionId': ?roleDefinitionId,
      'scope': ?scope,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetGremlinResourceGremlinRoleAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetGremlinResourceGremlinRoleAssignmentResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleDefinitionId: (() { final guardedValue = map['roleDefinitionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
