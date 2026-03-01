// ignore_for_file: unused_element, unnecessary_cast

import 'remote_private_endpoint_response.dart';

/// Represents private endpoint connection proxy request.
class PrivateEndpointConnectionProxyPropertiesResponse {
  /// Gets or sets the provisioning state of the private endpoint connection proxy.
  final String provisioningState;
  /// Represent remote private endpoint information for the private endpoint connection proxy.
  final RemotePrivateEndpointResponse? remotePrivateEndpoint;

  /// Creates a new [PrivateEndpointConnectionProxyPropertiesResponse].
  /// [provisioningState] Gets or sets the provisioning state of the private endpoint connection proxy.
  /// [remotePrivateEndpoint] Represent remote private endpoint information for the private endpoint connection proxy.
  PrivateEndpointConnectionProxyPropertiesResponse({
    required this.provisioningState,
    this.remotePrivateEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'remotePrivateEndpoint': ?remotePrivateEndpoint == null ? null : remotePrivateEndpoint!.toMap(),
    };
  }

  factory PrivateEndpointConnectionProxyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionProxyPropertiesResponse(
      provisioningState: map['provisioningState'] as String,
      remotePrivateEndpoint: map['remotePrivateEndpoint'] == null ? null : RemotePrivateEndpointResponse.fromMap((map['remotePrivateEndpoint'] as Map).cast<String, dynamic>()),
    );
  }
}

