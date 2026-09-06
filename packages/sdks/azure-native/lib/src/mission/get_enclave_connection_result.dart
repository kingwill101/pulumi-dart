// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getEnclaveConnection.
class GetEnclaveConnectionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Community Resource Id.
  final String? communityResourceId;
  /// Destination Endpoint Resource Id.
  final String? destinationEndpointId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Provisioning State.
  final String? provisioningState;
  /// List of resource ids modified by enclave Connections.
  final List<String>? resourceCollection;
  /// Source CIDR.
  final String? sourceCidr;
  /// Source Resource Id.
  final String? sourceResourceId;
  /// The state of the enclaveConnection.
  final String? state;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetEnclaveConnectionResult({
    this.azureApiVersion,
    this.communityResourceId,
    this.destinationEndpointId,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.resourceCollection,
    this.sourceCidr,
    this.sourceResourceId,
    this.state,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'communityResourceId': ?communityResourceId,
      'destinationEndpointId': ?destinationEndpointId,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'resourceCollection': ?resourceCollection,
      'sourceCidr': ?sourceCidr,
      'sourceResourceId': ?sourceResourceId,
      'state': ?state,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetEnclaveConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetEnclaveConnectionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      communityResourceId: (() { final guardedValue = map['communityResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinationEndpointId: (() { final guardedValue = map['destinationEndpointId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceCollection: (() { final guardedValue = map['resourceCollection']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      sourceCidr: (() { final guardedValue = map['sourceCidr']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceResourceId: (() { final guardedValue = map['sourceResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
