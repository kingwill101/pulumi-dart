// ignore_for_file: unused_element, unnecessary_cast

import 'managed_private_endpoint_connection_state_response.dart';
import 'system_data_response.dart';

/// Result data returned by getManagedPrivateEndpoint.
class GetManagedPrivateEndpointResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The state of managed private endpoint connection.
  final ManagedPrivateEndpointConnectionStateResponse connectionState;
  /// The group Ids of the managed private endpoint.
  final List<String>? groupIds;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The ARM resource ID of the resource for which the managed private endpoint is pointing to.
  final String? privateLinkResourceId;
  /// The region of the resource to which the managed private endpoint is pointing to.
  final String? privateLinkResourceRegion;
  /// The private IP of private endpoint after approval. This property is empty before connection is approved.
  final String privateLinkServicePrivateIP;
  /// The URL of the data store behind the private link service. It would be the URL in the Grafana data source configuration page without the protocol and port.
  final String? privateLinkServiceUrl;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// User input request message of the managed private endpoint.
  final String? requestMessage;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetManagedPrivateEndpointResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [connectionState] The state of managed private endpoint connection.
  /// [groupIds] The group Ids of the managed private endpoint.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [privateLinkResourceId] The ARM resource ID of the resource for which the managed private endpoint is pointing to.
  /// [privateLinkResourceRegion] The region of the resource to which the managed private endpoint is pointing to.
  /// [privateLinkServicePrivateIP] The private IP of private endpoint after approval. This property is empty before connection is approved.
  /// [privateLinkServiceUrl] The URL of the data store behind the private link service. It would be the URL in the Grafana data source configuration page without the protocol and port.
  /// [provisioningState] Provisioning state of the resource.
  /// [requestMessage] User input request message of the managed private endpoint.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetManagedPrivateEndpointResult({
    required this.azureApiVersion,
    required this.connectionState,
    this.groupIds,
    required this.id,
    required this.location,
    required this.name,
    this.privateLinkResourceId,
    this.privateLinkResourceRegion,
    required this.privateLinkServicePrivateIP,
    this.privateLinkServiceUrl,
    required this.provisioningState,
    this.requestMessage,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'connectionState': connectionState.toMap(),
      'groupIds': ?groupIds,
      'id': id,
      'location': location,
      'name': name,
      'privateLinkResourceId': ?privateLinkResourceId,
      'privateLinkResourceRegion': ?privateLinkResourceRegion,
      'privateLinkServicePrivateIP': privateLinkServicePrivateIP,
      'privateLinkServiceUrl': ?privateLinkServiceUrl,
      'provisioningState': provisioningState,
      'requestMessage': ?requestMessage,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetManagedPrivateEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetManagedPrivateEndpointResult(
      azureApiVersion: map['azureApiVersion'] as String,
      connectionState: ManagedPrivateEndpointConnectionStateResponse.fromMap((map['connectionState']! as Map).cast<String, dynamic>()),
      groupIds: (() { final guardedValue = map['groupIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      privateLinkResourceId: (() { final guardedValue = map['privateLinkResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateLinkResourceRegion: (() { final guardedValue = map['privateLinkResourceRegion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateLinkServicePrivateIP: map['privateLinkServicePrivateIP'] as String,
      privateLinkServiceUrl: (() { final guardedValue = map['privateLinkServiceUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      requestMessage: (() { final guardedValue = map['requestMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

