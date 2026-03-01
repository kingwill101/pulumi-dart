// ignore_for_file: unused_element, unnecessary_cast


/// Defines the endpoint properties
class Endpoint {
  /// The endpoint URL
  final String? endpoint;
  /// The name of the endpoint
  final String? name;

  /// Creates a new [Endpoint].
  /// [endpoint] The endpoint URL
  /// [name] The name of the endpoint
  Endpoint({
    this.endpoint,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'name': ?name,
    };
  }

  factory Endpoint.fromMap(Map<String, dynamic> map) {
    return Endpoint(
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

