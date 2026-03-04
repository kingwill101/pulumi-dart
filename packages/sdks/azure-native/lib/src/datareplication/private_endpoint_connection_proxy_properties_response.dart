// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'remote_private_endpoint_response.dart';

/// Represents private endpoint connection proxy request.
class PrivateEndpointConnectionProxyPropertiesResponse {
  /// Gets or sets the provisioning state of the private endpoint connection proxy.
  final pulumi.Input<String> provisioningState;

  /// Represent remote private endpoint information for the private endpoint connection proxy.
  final pulumi.Input<RemotePrivateEndpointResponse>? remotePrivateEndpoint;

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
      'remotePrivateEndpoint':
          ?pulumi.Input.mapOptionalInputValue<
            RemotePrivateEndpointResponse,
            Map<String, dynamic>
          >(remotePrivateEndpoint, (value) => value.toMap()),
    };
  }

  factory PrivateEndpointConnectionProxyPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return PrivateEndpointConnectionProxyPropertiesResponse(
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      remotePrivateEndpoint: (() {
        final guardedValue = map['remotePrivateEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RemotePrivateEndpointResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
