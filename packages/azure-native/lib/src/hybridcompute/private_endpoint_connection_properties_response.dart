// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_property_response.dart';
import 'private_link_service_connection_state_property_response.dart';

/// Properties of a private endpoint connection.
class PrivateEndpointConnectionPropertiesResponse {
  /// List of group IDs.
  final List<String> groupIds;
  /// Private endpoint which the connection belongs to.
  final PrivateEndpointPropertyResponse? privateEndpoint;
  /// Connection state of the private endpoint connection.
  final PrivateLinkServiceConnectionStatePropertyResponse? privateLinkServiceConnectionState;
  /// State of the private endpoint connection.
  final String provisioningState;

  /// Creates a new [PrivateEndpointConnectionPropertiesResponse].
  /// [groupIds] List of group IDs.
  /// [privateEndpoint] Private endpoint which the connection belongs to.
  /// [privateLinkServiceConnectionState] Connection state of the private endpoint connection.
  /// [provisioningState] State of the private endpoint connection.
  PrivateEndpointConnectionPropertiesResponse({
    required this.groupIds,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': groupIds,
      'privateEndpoint': ?privateEndpoint == null ? null : privateEndpoint!.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory PrivateEndpointConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionPropertiesResponse(
      groupIds: (map['groupIds'] as List).cast<String>(),
      privateEndpoint: map['privateEndpoint'] == null ? null : PrivateEndpointPropertyResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : PrivateLinkServiceConnectionStatePropertyResponse.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

