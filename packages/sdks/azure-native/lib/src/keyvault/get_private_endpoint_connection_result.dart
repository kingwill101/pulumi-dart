// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';

/// Result data returned by getPrivateEndpointConnection.
class GetPrivateEndpointConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Modified whenever there is a change in the state of private endpoint connection.
  final String? etag;
  /// Fully qualified identifier of the key vault resource.
  final String id;
  /// Azure location of the key vault resource.
  final String location;
  /// Name of the key vault resource.
  final String name;
  /// Properties of the private endpoint object.
  final PrivateEndpointResponse? privateEndpoint;
  /// Approval state of the private link connection.
  final PrivateLinkServiceConnectionStateResponse? privateLinkServiceConnectionState;
  /// Provisioning state of the private endpoint connection.
  final String provisioningState;
  /// Tags assigned to the key vault resource.
  final Map<String, String> tags;
  /// Resource type of the key vault resource.
  final String type;

  /// Creates a new [GetPrivateEndpointConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] Modified whenever there is a change in the state of private endpoint connection.
  /// [id] Fully qualified identifier of the key vault resource.
  /// [location] Azure location of the key vault resource.
  /// [name] Name of the key vault resource.
  /// [privateEndpoint] Properties of the private endpoint object.
  /// [privateLinkServiceConnectionState] Approval state of the private link connection.
  /// [provisioningState] Provisioning state of the private endpoint connection.
  /// [tags] Tags assigned to the key vault resource.
  /// [type] Resource type of the key vault resource.
  GetPrivateEndpointConnectionResult({
    required this.azureApiVersion,
    this.etag,
    required this.id,
    required this.location,
    required this.name,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    required this.provisioningState,
    required this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': ?etag,
      'id': id,
      'location': location,
      'name': name,
      'privateEndpoint': ?privateEndpoint == null ? null : privateEndpoint!.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
      'provisioningState': provisioningState,
      'tags': tags,
      'type': type,
    };
  }

  factory GetPrivateEndpointConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      privateEndpoint: map['privateEndpoint'] == null ? null : PrivateEndpointResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : PrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

