// ignore_for_file: unused_element, unnecessary_cast

import 'arm_id_wrapper_response.dart';
import 'private_link_connection_state_response.dart';

/// A remote private endpoint connection
class RemotePrivateEndpointConnectionResponse {
  /// PrivateEndpoint of a remote private endpoint connection
  final ArmIdWrapperResponse? privateEndpoint;
  /// The state of a private link connection
  final PrivateLinkConnectionStateResponse? privateLinkServiceConnectionState;
  final String provisioningState;

  /// Creates a new [RemotePrivateEndpointConnectionResponse].
  /// [privateEndpoint] PrivateEndpoint of a remote private endpoint connection
  /// [privateLinkServiceConnectionState] The state of a private link connection
  /// [provisioningState] Required.
  RemotePrivateEndpointConnectionResponse({
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpoint': ?privateEndpoint == null ? null : privateEndpoint!.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory RemotePrivateEndpointConnectionResponse.fromMap(Map<String, dynamic> map) {
    return RemotePrivateEndpointConnectionResponse(
      privateEndpoint: map['privateEndpoint'] == null ? null : ArmIdWrapperResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : PrivateLinkConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

