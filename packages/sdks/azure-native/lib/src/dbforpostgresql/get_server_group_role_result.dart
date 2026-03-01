// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getServerGroupRole.
class GetServerGroupRoleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// A type definition that refers the id to an Azure Resource Manager resource.
  final String objectId;
  final String principalType;
  /// Provisioning state of the role
  final String provisioningState;
  final String? roleType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// A type definition that refers the id to an Azure Resource Manager resource.
  final String? tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetServerGroupRoleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [objectId] A type definition that refers the id to an Azure Resource Manager resource.
  /// [principalType] Required.
  /// [provisioningState] Provisioning state of the role
  /// [roleType] Optional.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tenantId] A type definition that refers the id to an Azure Resource Manager resource.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetServerGroupRoleResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.objectId,
    required this.principalType,
    required this.provisioningState,
    this.roleType,
    required this.systemData,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'objectId': objectId,
      'principalType': principalType,
      'provisioningState': provisioningState,
      'roleType': ?roleType,
      'systemData': systemData.toMap(),
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory GetServerGroupRoleResult.fromMap(Map<String, dynamic> map) {
    return GetServerGroupRoleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      objectId: map['objectId'] as String,
      principalType: map['principalType'] as String,
      provisioningState: map['provisioningState'] as String,
      roleType: map['roleType'] == null ? null : map['roleType'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

