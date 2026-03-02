// ignore_for_file: unused_element, unnecessary_cast

import 'remote_private_endpoint_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPrivateEndpointConnectionProxy.
class GetPrivateEndpointConnectionProxyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// ETag from NRP.
  final String eTag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// The provisioning state of the private endpoint connection proxy resource.
  final String provisioningState;
  /// Remote private endpoint details.
  final RemotePrivateEndpointResponse? remotePrivateEndpoint;
  /// Operation status.
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetPrivateEndpointConnectionProxyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [eTag] ETag from NRP.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the private endpoint connection proxy resource.
  /// [remotePrivateEndpoint] Remote private endpoint details.
  /// [status] Operation status.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetPrivateEndpointConnectionProxyResult({
    required this.azureApiVersion,
    required this.eTag,
    required this.id,
    required this.name,
    required this.provisioningState,
    this.remotePrivateEndpoint,
    this.status,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'eTag': eTag,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'remotePrivateEndpoint': ?remotePrivateEndpoint == null ? null : remotePrivateEndpoint!.toMap(),
      'status': ?status,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetPrivateEndpointConnectionProxyResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionProxyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      eTag: map['eTag'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      remotePrivateEndpoint: map['remotePrivateEndpoint'] == null ? null : RemotePrivateEndpointResponse.fromMap((map['remotePrivateEndpoint']! as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status']! as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

