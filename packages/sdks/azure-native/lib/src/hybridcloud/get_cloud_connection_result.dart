// ignore_for_file: unused_element, unnecessary_cast

import 'resource_reference_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCloudConnection.
class GetCloudConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The cloud connector which discovered the remote resource.
  final ResourceReferenceResponse? cloudConnector;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The provisioning state of the cloud collection resource.
  final String provisioningState;
  /// Identifier for the remote cloud resource
  final String? remoteResourceId;
  /// Shared key of the cloud connection.
  final String? sharedKey;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The virtualHub to which the cloud connection belongs.
  final ResourceReferenceResponse? virtualHub;

  /// Creates a new [GetCloudConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cloudConnector] The cloud connector which discovered the remote resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the cloud collection resource.
  /// [remoteResourceId] Identifier for the remote cloud resource
  /// [sharedKey] Shared key of the cloud connection.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [virtualHub] The virtualHub to which the cloud connection belongs.
  GetCloudConnectionResult({
    required this.azureApiVersion,
    this.cloudConnector,
    required this.etag,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    this.remoteResourceId,
    this.sharedKey,
    required this.systemData,
    this.tags,
    required this.type,
    this.virtualHub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'cloudConnector': ?cloudConnector == null ? null : cloudConnector!.toMap(),
      'etag': etag,
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'remoteResourceId': ?remoteResourceId,
      'sharedKey': ?sharedKey,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'virtualHub': ?virtualHub == null ? null : virtualHub!.toMap(),
    };
  }

  factory GetCloudConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetCloudConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      cloudConnector: map['cloudConnector'] == null ? null : ResourceReferenceResponse.fromMap((map['cloudConnector'] as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      remoteResourceId: map['remoteResourceId'] == null ? null : map['remoteResourceId'] as String,
      sharedKey: map['sharedKey'] == null ? null : map['sharedKey'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      virtualHub: map['virtualHub'] == null ? null : ResourceReferenceResponse.fromMap((map['virtualHub'] as Map).cast<String, dynamic>()),
    );
  }
}

