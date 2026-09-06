// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getAdministrator.
class GetAdministratorResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// Object identifier of the Microsoft Entra principal.
  final String? objectId;
  /// Name of the Microsoft Entra principal.
  final String? principalName;
  /// Type of Microsoft Entra principal to which the server administrator is associated.
  final String? principalType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Identifier of the tenant in which the Microsoft Entra principal exists.
  final String? tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetAdministratorResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.objectId,
    this.principalName,
    this.principalType,
    this.systemData,
    this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'objectId': ?objectId,
      'principalName': ?principalName,
      'principalType': ?principalType,
      'systemData': ?systemData?.toMap(),
      'tenantId': ?tenantId,
      'type': ?type,
    };
  }

  factory GetAdministratorResult.fromMap(Map<String, dynamic> map) {
    return GetAdministratorResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      principalName: (() { final guardedValue = map['principalName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      principalType: (() { final guardedValue = map['principalType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
