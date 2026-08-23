// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getAttachedNetworkByDevCenter.
class GetAttachedNetworkByDevCenterResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// AAD Join type of the network. This is populated based on the referenced Network Connection.
  final String domainJoinType;
  /// Health check status values
  final String healthCheckStatus;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// The resource ID of the NetworkConnection you want to attach.
  final String networkConnectionId;
  /// The geo-location where the NetworkConnection resource specified in 'networkConnectionResourceId' property lives.
  final String networkConnectionLocation;
  /// The provisioning state of the resource.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
    required this.azureApiVersion,
    required this.domainJoinType,
    required this.healthCheckStatus,
    required this.id,
    required this.name,
    required this.networkConnectionId,
    required this.networkConnectionLocation,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'domainJoinType': domainJoinType,
      'healthCheckStatus': healthCheckStatus,
      'id': id,
      'name': name,
      'networkConnectionId': networkConnectionId,
      'networkConnectionLocation': networkConnectionLocation,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetAttachedNetworkByDevCenterResult.fromMap(Map<String, dynamic> map) {
    return GetAttachedNetworkByDevCenterResult(
      azureApiVersion: map['azureApiVersion'] as String,
      domainJoinType: map['domainJoinType'] as String,
      healthCheckStatus: map['healthCheckStatus'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      networkConnectionId: map['networkConnectionId'] as String,
      networkConnectionLocation: map['networkConnectionLocation'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
