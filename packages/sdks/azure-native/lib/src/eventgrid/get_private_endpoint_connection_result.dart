// ignore_for_file: unused_element, unnecessary_cast

import 'connection_state_response.dart';
import 'private_endpoint_response.dart';

/// Result data returned by getPrivateEndpointConnection.
class GetPrivateEndpointConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// GroupIds from the private link service resource.
  final List<String>? groupIds;
  /// Fully qualified identifier of the resource.
  final String id;
  /// Name of the resource.
  final String name;
  /// The Private Endpoint resource for this Connection.
  final PrivateEndpointResponse? privateEndpoint;
  /// Details about the state of the connection.
  final ConnectionStateResponse? privateLinkServiceConnectionState;
  /// Provisioning state of the Private Endpoint Connection.
  final String? provisioningState;
  /// Type of the resource.
  final String type;

  /// Creates a new [GetPrivateEndpointConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [groupIds] GroupIds from the private link service resource.
  /// [id] Fully qualified identifier of the resource.
  /// [name] Name of the resource.
  /// [privateEndpoint] The Private Endpoint resource for this Connection.
  /// [privateLinkServiceConnectionState] Details about the state of the connection.
  /// [provisioningState] Provisioning state of the Private Endpoint Connection.
  /// [type] Type of the resource.
  const GetPrivateEndpointConnectionResult({
    required this.azureApiVersion,
    this.groupIds,
    required this.id,
    required this.name,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'groupIds': ?groupIds,
      'id': id,
      'name': name,
      'privateEndpoint': ?privateEndpoint?.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState?.toMap(),
      'provisioningState': ?provisioningState,
      'type': type,
    };
  }

  factory GetPrivateEndpointConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      groupIds: (() { final guardedValue = map['groupIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: map['id'] as String,
      name: map['name'] as String,
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return PrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      privateLinkServiceConnectionState: (() { final guardedValue = map['privateLinkServiceConnectionState']; if (guardedValue == null) return null; return ConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}
