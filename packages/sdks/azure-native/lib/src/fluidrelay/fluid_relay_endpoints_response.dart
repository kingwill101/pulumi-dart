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
  FluidRelayEndpointsResponse({
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
      ordererEndpoints: ((map['ordererEndpoints'] as List).cast<String>()).input(),
      serviceEndpoints: ((map['serviceEndpoints'] as List).cast<String>()).input(),
      storageEndpoints: ((map['storageEndpoints'] as List).cast<String>()).input(),
    );
  }
}

