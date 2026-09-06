// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';

/// The properties of a private endpoint connection.
class PrivateEndpointConnectionPropertiesResponse {
  /// GroupIds from the private link service resource.
  final pulumi.Input<List<String>?>? groupIds;
  /// Private endpoint
  final pulumi.Input<PrivateEndpointResponse?>? privateEndpoint;
  /// Private endpoint connection state
  final pulumi.Input<PrivateLinkServiceConnectionStateResponse> privateLinkServiceConnectionState;
  /// Provisioning state of the private endpoint connection.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [PrivateEndpointConnectionPropertiesResponse].
  /// [groupIds] GroupIds from the private link service resource.
  /// [privateEndpoint] Private endpoint
  /// [privateLinkServiceConnectionState] Private endpoint connection state
  /// [provisioningState] Provisioning state of the private endpoint connection.
  const PrivateEndpointConnectionPropertiesResponse({
    this.groupIds,
    this.privateEndpoint,
    required this.privateLinkServiceConnectionState,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<PrivateEndpointResponse, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState': pulumi.Input.mapInputValue<PrivateLinkServiceConnectionStateResponse, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory PrivateEndpointConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionPropertiesResponse(
      groupIds: (() { final guardedValue = map['groupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateLinkServiceConnectionState: pulumi.Input.fromValue(PrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState']! as Map).cast<String, dynamic>())),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
