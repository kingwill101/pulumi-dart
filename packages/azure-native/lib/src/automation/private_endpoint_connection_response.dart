// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_property_response.dart';
import 'private_link_service_connection_state_property_response.dart';

/// A private endpoint connection
class PrivateEndpointConnectionResponse {
  /// Gets the groupIds.
  final List<String>? groupIds;
  /// Fully qualified resource Id for the resource
  final String id;
  /// The name of the resource
  final String name;
  /// Private endpoint which the connection belongs to.
  final PrivateEndpointPropertyResponse? privateEndpoint;
  /// Connection State of the Private Endpoint Connection.
  final PrivateLinkServiceConnectionStatePropertyResponse? privateLinkServiceConnectionState;
  /// The type of the resource.
  final String type;

  /// Creates a new [PrivateEndpointConnectionResponse].
  /// [groupIds] Gets the groupIds.
  /// [id] Fully qualified resource Id for the resource
  /// [name] The name of the resource
  /// [privateEndpoint] Private endpoint which the connection belongs to.
  /// [privateLinkServiceConnectionState] Connection State of the Private Endpoint Connection.
  /// [type] The type of the resource.
  PrivateEndpointConnectionResponse({
    this.groupIds,
    required this.id,
    required this.name,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'id': id,
      'name': name,
      'privateEndpoint': ?privateEndpoint == null ? null : privateEndpoint!.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
      'type': type,
    };
  }

  factory PrivateEndpointConnectionResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionResponse(
      groupIds: map['groupIds'] == null ? null : (map['groupIds'] as List).cast<String>(),
      id: map['id'] as String,
      name: map['name'] as String,
      privateEndpoint: map['privateEndpoint'] == null ? null : PrivateEndpointPropertyResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : PrivateLinkServiceConnectionStatePropertyResponse.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

