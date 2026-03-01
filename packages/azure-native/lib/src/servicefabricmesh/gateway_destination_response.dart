// ignore_for_file: unused_element, unnecessary_cast


/// Describes destination endpoint for routing traffic.
class GatewayDestinationResponse {
  /// Name of the service fabric Mesh application.
  final String applicationName;
  /// name of the endpoint in the service.
  final String endpointName;
  /// service that contains the endpoint.
  final String serviceName;

  /// Creates a new [GatewayDestinationResponse].
  /// [applicationName] Name of the service fabric Mesh application.
  /// [endpointName] name of the endpoint in the service.
  /// [serviceName] service that contains the endpoint.
  GatewayDestinationResponse({
    required this.applicationName,
    required this.endpointName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'endpointName': endpointName,
      'serviceName': serviceName,
    };
  }

  factory GatewayDestinationResponse.fromMap(Map<String, dynamic> map) {
    return GatewayDestinationResponse(
      applicationName: map['applicationName'] as String,
      endpointName: map['endpointName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

