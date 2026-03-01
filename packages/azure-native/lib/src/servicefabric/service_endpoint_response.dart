// ignore_for_file: unused_element, unnecessary_cast


/// The service endpoint properties.
class ServiceEndpointResponse {
  /// A list of locations.
  final List<String>? locations;
  /// The type of the endpoint service.
  final String service;

  /// Creates a new [ServiceEndpointResponse].
  /// [locations] A list of locations.
  /// [service] The type of the endpoint service.
  ServiceEndpointResponse({
    this.locations,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': ?locations,
      'service': service,
    };
  }

  factory ServiceEndpointResponse.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointResponse(
      locations: map['locations'] == null ? null : (map['locations'] as List).cast<String>(),
      service: map['service'] as String,
    );
  }
}

