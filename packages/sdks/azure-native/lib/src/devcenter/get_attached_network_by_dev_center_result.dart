// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getAttachedNetworkByDevCenter.
class GetAttachedNetworkByDevCenterResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// AAD Join type of the network. This is populated based on the referenced Network Connection.
  final String? domainJoinType;
  /// Health check status values
  final String? healthCheckStatus;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// The resource ID of the NetworkConnection you want to attach.
  final String? networkConnectionId;
  /// The geo-location where the NetworkConnection resource specified in 'networkConnectionResourceId' property lives.
  final String? networkConnectionLocation;
  /// The provisioning state of the resource.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetAttachedNetworkByDevCenterResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [domainJoinType] AAD Join type of the network. This is populated based on the referenced Network Connection.
  /// [healthCheckStatus] Health check status values
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [networkConnectionId] The resource ID of the NetworkConnection you want to attach.
  /// [networkConnectionLocation] The geo-location where the NetworkConnection resource specified in 'networkConnectionResourceId' property lives.
  /// [provisioningState] The provisioning state of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetAttachedNetworkByDevCenterResult({
    this.azureApiVersion,
    this.domainJoinType,
    this.healthCheckStatus,
    this.id,
    this.name,
    this.networkConnectionId,
    this.networkConnectionLocation,
    this.provisioningState,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'domainJoinType': ?domainJoinType,
      'healthCheckStatus': ?healthCheckStatus,
      'id': ?id,
      'name': ?name,
      'networkConnectionId': ?networkConnectionId,
      'networkConnectionLocation': ?networkConnectionLocation,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetAttachedNetworkByDevCenterResult.fromMap(Map<String, dynamic> map) {
    return GetAttachedNetworkByDevCenterResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainJoinType: (() { final guardedValue = map['domainJoinType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      healthCheckStatus: (() { final guardedValue = map['healthCheckStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkConnectionId: (() { final guardedValue = map['networkConnectionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkConnectionLocation: (() { final guardedValue = map['networkConnectionLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
