// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Fluid Relay endpoints for this server
class FluidRelayEndpointsResponse {
  /// The Fluid Relay Orderer endpoints.
  final pulumi.Input<List<String>> ordererEndpoints;
  /// The Fluid Relay service endpoints.
  final pulumi.Input<List<String>> serviceEndpoints;
  /// The Fluid Relay storage endpoints.
  final pulumi.Input<List<String>> storageEndpoints;

  /// Creates a new [FluidRelayEndpointsResponse].
  /// [ordererEndpoints] The Fluid Relay Orderer endpoints.
  /// [serviceEndpoints] The Fluid Relay service endpoints.
  /// [storageEndpoints] The Fluid Relay storage endpoints.
  const FluidRelayEndpointsResponse({
    required this.ordererEndpoints,
    required this.serviceEndpoints,
    required this.storageEndpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ordererEndpoints': ordererEndpoints,
      'serviceEndpoints': serviceEndpoints,
      'storageEndpoints': storageEndpoints,
    };
  }

  factory FluidRelayEndpointsResponse.fromMap(Map<String, dynamic> map) {
    return FluidRelayEndpointsResponse(
      ordererEndpoints: pulumi.Input.fromValue((map['ordererEndpoints'] as List).cast<String>()),
      serviceEndpoints: pulumi.Input.fromValue((map['serviceEndpoints'] as List).cast<String>()),
      storageEndpoints: pulumi.Input.fromValue((map['storageEndpoints'] as List).cast<String>()),
    );
  }
}

