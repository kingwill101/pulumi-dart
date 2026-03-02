// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getAdministrator.
class GetAdministratorResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Object identifier of the Microsoft Entra principal.
  final String? objectId;
  /// Name of the Microsoft Entra principal.
  final String? principalName;
  /// Type of Microsoft Entra principal to which the server administrator is associated.
  final String? principalType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Identifier of the tenant in which the Microsoft Entra principal exists.
  final String? tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetAdministratorResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [objectId] Object identifier of the Microsoft Entra principal.
  /// [principalName] Name of the Microsoft Entra principal.
  /// [principalType] Type of Microsoft Entra principal to which the server administrator is associated.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tenantId] Identifier of the tenant in which the Microsoft Entra principal exists.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetAdministratorResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    this.objectId,
    this.principalName,
    this.principalType,
    required this.systemData,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'objectId': ?objectId,
      'principalName': ?principalName,
      'principalType': ?principalType,
      'systemData': systemData.toMap(),
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory GetAdministratorResult.fromMap(Map<String, dynamic> map) {
    return GetAdministratorResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      objectId: map['objectId'] == null ? null : map['objectId']! as String,
      principalName: map['principalName'] == null ? null : map['principalName']! as String,
      principalType: map['principalType'] == null ? null : map['principalType']! as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tenantId: map['tenantId'] == null ? null : map['tenantId']! as String,
      type: map['type'] as String,
    );
  }
}

