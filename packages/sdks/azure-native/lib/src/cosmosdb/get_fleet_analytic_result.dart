// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getFleetAnalytic.
class GetFleetAnalyticResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// A provisioning state of the FleetAnalytics.
  final String? provisioningState;
  /// The type of the fleet analytics resource.
  final String? storageLocationType;
  /// The unique identifier of the fleet analytics resource.
  final String? storageLocationUri;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetFleetAnalyticResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [provisioningState] A provisioning state of the FleetAnalytics.
  /// [storageLocationType] The type of the fleet analytics resource.
  /// [storageLocationUri] The unique identifier of the fleet analytics resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetFleetAnalyticResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.provisioningState,
    this.storageLocationType,
    this.storageLocationUri,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'storageLocationType': ?storageLocationType,
      'storageLocationUri': ?storageLocationUri,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetFleetAnalyticResult.fromMap(Map<String, dynamic> map) {
    return GetFleetAnalyticResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageLocationType: (() { final guardedValue = map['storageLocationType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageLocationUri: (() { final guardedValue = map['storageLocationUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
