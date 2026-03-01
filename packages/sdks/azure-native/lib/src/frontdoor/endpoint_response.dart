// ignore_for_file: unused_element, unnecessary_cast


/// Defines the endpoint properties
class EndpointResponse {
  /// The endpoint URL
  final String? endpoint;
  /// The name of the endpoint
  final String? name;

  /// Creates a new [EndpointResponse].
  /// [endpoint] The endpoint URL
  /// [name] The name of the endpoint
  EndpointResponse({
    this.endpoint,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'name': ?name,
    };
  }

  factory EndpointResponse.fromMap(Map<String, dynamic> map) {
    return EndpointResponse(
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

