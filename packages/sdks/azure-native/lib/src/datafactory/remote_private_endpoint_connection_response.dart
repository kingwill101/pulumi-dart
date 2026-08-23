// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_id_wrapper_response.dart';
import 'private_link_connection_state_response.dart';

/// A remote private endpoint connection
class RemotePrivateEndpointConnectionResponse {
  /// PrivateEndpoint of a remote private endpoint connection
  final pulumi.Input<ArmIdWrapperResponse>? privateEndpoint;
  /// The state of a private link connection
  final pulumi.Input<PrivateLinkConnectionStateResponse>? privateLinkServiceConnectionState;
  final pulumi.Input<String> provisioningState;

  /// Creates a new [RemotePrivateEndpointConnectionResponse].
  /// [privateEndpoint] PrivateEndpoint of a remote private endpoint connection
  /// [privateLinkServiceConnectionState] The state of a private link connection
  /// [provisioningState] Required.
  const RemotePrivateEndpointConnectionResponse({
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<ArmIdWrapperResponse, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkConnectionStateResponse, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory RemotePrivateEndpointConnectionResponse.fromMap(Map<String, dynamic> map) {
    return RemotePrivateEndpointConnectionResponse(
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ArmIdWrapperResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateLinkServiceConnectionState: (() { final guardedValue = map['privateLinkServiceConnectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateLinkConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
