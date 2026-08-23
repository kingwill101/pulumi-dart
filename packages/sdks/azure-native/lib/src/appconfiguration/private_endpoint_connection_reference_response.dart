// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';

/// A reference to a related private endpoint connection.
class PrivateEndpointConnectionReferenceResponse {
  /// The resource ID.
  final pulumi.Input<String> id;
  /// The name of the resource.
  final pulumi.Input<String> name;
  /// The resource of private endpoint.
  final pulumi.Input<PrivateEndpointResponse>? privateEndpoint;
  /// A collection of information about the state of the connection between service consumer and provider.
  final pulumi.Input<PrivateLinkServiceConnectionStateResponse> privateLinkServiceConnectionState;
  /// The provisioning status of the private endpoint connection.
  final pulumi.Input<String> provisioningState;
  /// The type of the resource.
  final pulumi.Input<String> type;

  /// Creates a new [PrivateEndpointConnectionReferenceResponse].
  /// [id] The resource ID.
  /// [name] The name of the resource.
  /// [privateEndpoint] The resource of private endpoint.
  /// [privateLinkServiceConnectionState] A collection of information about the state of the connection between service consumer and provider.
  /// [provisioningState] The provisioning status of the private endpoint connection.
  /// [type] The type of the resource.
  const PrivateEndpointConnectionReferenceResponse({
    required this.id,
    required this.name,
    this.privateEndpoint,
    required this.privateLinkServiceConnectionState,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<PrivateEndpointResponse, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState': pulumi.Input.mapInputValue<PrivateLinkServiceConnectionStateResponse, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory PrivateEndpointConnectionReferenceResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionReferenceResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateLinkServiceConnectionState: pulumi.Input.fromValue(PrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState']! as Map).cast<String, dynamic>())),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
