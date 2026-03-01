// ignore_for_file: unused_element, unnecessary_cast


/// The integration service environment access endpoint.
class IntegrationServiceEnvironmentAccessEndpointResponse {
  /// The access endpoint type.
  final String? type;

  /// Creates a new [IntegrationServiceEnvironmentAccessEndpointResponse].
  /// [type] The access endpoint type.
  IntegrationServiceEnvironmentAccessEndpointResponse({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory IntegrationServiceEnvironmentAccessEndpointResponse.fromMap(Map<String, dynamic> map) {
    return IntegrationServiceEnvironmentAccessEndpointResponse(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

