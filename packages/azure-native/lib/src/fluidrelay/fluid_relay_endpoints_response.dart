// ignore_for_file: unused_element, unnecessary_cast


/// The Fluid Relay endpoints for this server
class FluidRelayEndpointsResponse {
  /// The Fluid Relay Orderer endpoints.
  final List<String> ordererEndpoints;
  /// The Fluid Relay service endpoints.
  final List<String> serviceEndpoints;
  /// The Fluid Relay storage endpoints.
  final List<String> storageEndpoints;

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
      ordererEndpoints: (map['ordererEndpoints'] as List).cast<String>(),
      serviceEndpoints: (map['serviceEndpoints'] as List).cast<String>(),
      storageEndpoints: (map['storageEndpoints'] as List).cast<String>(),
    );
  }
}

