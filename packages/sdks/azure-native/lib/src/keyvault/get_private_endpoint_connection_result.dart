// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';

/// Result data returned by getPrivateEndpointConnection.
class GetPrivateEndpointConnectionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Modified whenever there is a change in the state of private endpoint connection.
  final String? etag;
  /// Fully qualified identifier of the key vault resource.
  final String? id;
  /// Azure location of the key vault resource.
  final String? location;
  /// Name of the key vault resource.
  final String? name;
  /// Properties of the private endpoint object.
  final PrivateEndpointResponse? privateEndpoint;
  /// Approval state of the private link connection.
  final PrivateLinkServiceConnectionStateResponse? privateLinkServiceConnectionState;
  /// Provisioning state of the private endpoint connection.
  final String? provisioningState;
  /// Tags assigned to the key vault resource.
  final Map<String, String>? tags;
  /// Resource type of the key vault resource.
  final String? type;

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
  const GetPrivateEndpointConnectionResult({
    this.azureApiVersion,
    this.etag,
    this.id,
    this.location,
    this.name,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    this.provisioningState,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'privateEndpoint': ?privateEndpoint?.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState?.toMap(),
      'provisioningState': ?provisioningState,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetPrivateEndpointConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return PrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      privateLinkServiceConnectionState: (() { final guardedValue = map['privateLinkServiceConnectionState']; if (guardedValue == null) return null; return PrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
