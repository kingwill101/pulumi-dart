// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';

/// Properties of the PrivateEndpointConnectProperties.
class PrivateEndpointConnectionPropertiesResponse {
  /// The private link resource group ids.
  final List<String>? groupIds;
  /// The resource of private end point.
  final PrivateEndpointResponse? privateEndpoint;
  /// A collection of information about the state of the connection between service consumer and provider.
  final PrivateLinkServiceConnectionStateResponse privateLinkServiceConnectionState;
  /// The provisioning state of the private endpoint connection resource.
  final String provisioningState;

  /// Creates a new [PrivateEndpointConnectionPropertiesResponse].
  /// [groupIds] The private link resource group ids.
  /// [privateEndpoint] The resource of private end point.
  /// [privateLinkServiceConnectionState] A collection of information about the state of the connection between service consumer and provider.
  /// [provisioningState] The provisioning state of the private endpoint connection resource.
  PrivateEndpointConnectionPropertiesResponse({
    this.groupIds,
    this.privateEndpoint,
    required this.privateLinkServiceConnectionState,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'privateEndpoint': ?privateEndpoint == null ? null : privateEndpoint!.toMap(),
      'privateLinkServiceConnectionState': privateLinkServiceConnectionState.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory PrivateEndpointConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionPropertiesResponse(
      groupIds: map['groupIds'] == null ? null : (map['groupIds'] as List).cast<String>(),
      privateEndpoint: map['privateEndpoint'] == null ? null : PrivateEndpointResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: PrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

