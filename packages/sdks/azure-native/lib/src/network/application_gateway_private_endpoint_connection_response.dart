// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';

/// Private Endpoint connection on an application gateway.
class ApplicationGatewayPrivateEndpointConnectionResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The consumer link id.
  final pulumi.Input<String> linkIdentifier;
  /// Name of the private endpoint connection on an application gateway.
  final pulumi.Input<String>? name;
  /// The resource of private end point.
  final pulumi.Input<PrivateEndpointResponse> privateEndpoint;
  /// A collection of information about the state of the connection between service consumer and provider.
  final pulumi.Input<PrivateLinkServiceConnectionStateResponse>? privateLinkServiceConnectionState;
  /// The provisioning state of the application gateway private endpoint connection resource.
  final pulumi.Input<String> provisioningState;
  /// Type of the resource.
  final pulumi.Input<String> type;

  /// Creates a new [ApplicationGatewayPrivateEndpointConnectionResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [linkIdentifier] The consumer link id.
  /// [name] Name of the private endpoint connection on an application gateway.
  /// [privateEndpoint] The resource of private end point.
  /// [privateLinkServiceConnectionState] A collection of information about the state of the connection between service consumer and provider.
  /// [provisioningState] The provisioning state of the application gateway private endpoint connection resource.
  /// [type] Type of the resource.
  ApplicationGatewayPrivateEndpointConnectionResponse({
    required this.etag,
    this.id,
    required this.linkIdentifier,
    this.name,
    required this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': ?id,
      'linkIdentifier': linkIdentifier,
      'name': ?name,
      'privateEndpoint': pulumi.Input.mapInputValue<PrivateEndpointResponse, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceConnectionStateResponse, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory ApplicationGatewayPrivateEndpointConnectionResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayPrivateEndpointConnectionResponse(
      etag: (map['etag'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      linkIdentifier: (map['linkIdentifier'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      privateEndpoint: (PrivateEndpointResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>())).input(),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : (PrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

