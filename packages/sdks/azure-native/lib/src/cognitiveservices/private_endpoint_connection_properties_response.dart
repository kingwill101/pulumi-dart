// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';

/// Properties of the PrivateEndpointConnectProperties.
class PrivateEndpointConnectionPropertiesResponse {
  /// The private link resource group ids.
  final pulumi.Input<List<String>?>? groupIds;
  /// The resource of private end point.
  final pulumi.Input<PrivateEndpointResponse?>? privateEndpoint;
  /// A collection of information about the state of the connection between service consumer and provider.
  final pulumi.Input<PrivateLinkServiceConnectionStateResponse> privateLinkServiceConnectionState;
  /// The provisioning state of the private endpoint connection resource.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [PrivateEndpointConnectionPropertiesResponse].
  /// [groupIds] The private link resource group ids.
  /// [privateEndpoint] The resource of private end point.
  /// [privateLinkServiceConnectionState] A collection of information about the state of the connection between service consumer and provider.
  /// [provisioningState] The provisioning state of the private endpoint connection resource.
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
