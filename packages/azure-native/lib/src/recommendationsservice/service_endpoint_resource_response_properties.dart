// ignore_for_file: unused_element, unnecessary_cast


/// ServiceEndpoint resource properties.
class ServiceEndpointResourceResponseProperties {
  /// The paired location that will be used by this ServiceEndpoint.
  final String pairedLocation;
  /// ServiceEndpoint pre-allocated capacity controls the maximum requests-per-second allowed for that endpoint. Only applicable when Account configuration is Capacity.
  final int? preAllocatedCapacity;
  /// The resource provisioning state.
  final String provisioningState;
  /// The URL where the ServiceEndpoint API is accessible at.
  final String url;

  /// Creates a new [ServiceEndpointResourceResponseProperties].
  /// [pairedLocation] The paired location that will be used by this ServiceEndpoint.
  /// [preAllocatedCapacity] ServiceEndpoint pre-allocated capacity controls the maximum requests-per-second allowed for that endpoint. Only applicable when Account configuration is Capacity.
  /// [provisioningState] The resource provisioning state.
  /// [url] The URL where the ServiceEndpoint API is accessible at.
  ServiceEndpointResourceResponseProperties({
    required this.pairedLocation,
    this.preAllocatedCapacity,
    required this.provisioningState,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pairedLocation': pairedLocation,
      'preAllocatedCapacity': ?preAllocatedCapacity,
      'provisioningState': provisioningState,
      'url': url,
    };
  }

  factory ServiceEndpointResourceResponseProperties.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointResourceResponseProperties(
      pairedLocation: map['pairedLocation'] as String,
      preAllocatedCapacity: map['preAllocatedCapacity'] == null ? null : map['preAllocatedCapacity'] as int,
      provisioningState: map['provisioningState'] as String,
      url: map['url'] as String,
    );
  }
}

