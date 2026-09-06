// ignore_for_file: unused_element, unnecessary_cast

import 'resource_reference_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCloudConnection.
class GetCloudConnectionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The cloud connector which discovered the remote resource.
  final ResourceReferenceResponse? cloudConnector;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// The provisioning state of the cloud collection resource.
  final String? provisioningState;
  /// Identifier for the remote cloud resource
  final String? remoteResourceId;
  /// Shared key of the cloud connection.
  final String? sharedKey;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
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
  const GetCloudConnectionResult({
    this.azureApiVersion,
    this.cloudConnector,
    this.etag,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.remoteResourceId,
    this.sharedKey,
    this.systemData,
    this.tags,
    this.type,
    this.virtualHub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'cloudConnector': ?cloudConnector?.toMap(),
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'remoteResourceId': ?remoteResourceId,
      'sharedKey': ?sharedKey,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'virtualHub': ?virtualHub?.toMap(),
    };
  }

  factory GetCloudConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetCloudConnectionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudConnector: (() { final guardedValue = map['cloudConnector']; if (guardedValue == null) return null; return ResourceReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      remoteResourceId: (() { final guardedValue = map['remoteResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sharedKey: (() { final guardedValue = map['sharedKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualHub: (() { final guardedValue = map['virtualHub']; if (guardedValue == null) return null; return ResourceReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
