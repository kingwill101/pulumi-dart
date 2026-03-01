// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getEnclaveConnection.
class GetEnclaveConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Community Resource Id.
  final String communityResourceId;
  /// Destination Endpoint Resource Id.
  final String destinationEndpointId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Provisioning State.
  final String provisioningState;
  /// List of resource ids modified by enclave Connections.
  final List<String> resourceCollection;
  /// Source CIDR.
  final String? sourceCidr;
  /// Source Resource Id.
  final String sourceResourceId;
  /// The state of the enclaveConnection.
  final String state;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetEnclaveConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [communityResourceId] Community Resource Id.
  /// [destinationEndpointId] Destination Endpoint Resource Id.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Provisioning State.
  /// [resourceCollection] List of resource ids modified by enclave Connections.
  /// [sourceCidr] Source CIDR.
  /// [sourceResourceId] Source Resource Id.
  /// [state] The state of the enclaveConnection.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetEnclaveConnectionResult({
    required this.azureApiVersion,
    required this.communityResourceId,
    required this.destinationEndpointId,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.resourceCollection,
    this.sourceCidr,
    required this.sourceResourceId,
    required this.state,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'communityResourceId': communityResourceId,
      'destinationEndpointId': destinationEndpointId,
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'resourceCollection': resourceCollection,
      'sourceCidr': ?sourceCidr,
      'sourceResourceId': sourceResourceId,
      'state': state,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetEnclaveConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetEnclaveConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      communityResourceId: map['communityResourceId'] as String,
      destinationEndpointId: map['destinationEndpointId'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceCollection: (map['resourceCollection'] as List).cast<String>(),
      sourceCidr: map['sourceCidr'] == null ? null : map['sourceCidr'] as String,
      sourceResourceId: map['sourceResourceId'] as String,
      state: map['state'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

