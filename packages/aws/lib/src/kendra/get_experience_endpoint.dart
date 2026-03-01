// ignore_for_file: unused_element, unnecessary_cast

class GetExperienceEndpoint {
  /// Endpoint of your Amazon Kendra Experience.
  final String endpoint;

  /// Type of endpoint for your Amazon Kendra Experience.
  final String endpointType;

  /// Creates a new [GetExperienceEndpoint].
  /// [endpoint] Endpoint of your Amazon Kendra Experience.
  /// [endpointType] Type of endpoint for your Amazon Kendra Experience.
  GetExperienceEndpoint({required this.endpoint, required this.endpointType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'endpointType': endpointType,
    };
  }

  factory GetExperienceEndpoint.fromMap(Map<String, dynamic> map) {
    return GetExperienceEndpoint(
      endpoint: map['endpoint'] as String,
      endpointType: map['endpointType'] as String,
    );
  }
}
