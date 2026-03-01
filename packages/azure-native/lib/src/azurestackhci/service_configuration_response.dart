// ignore_for_file: unused_element, unnecessary_cast


/// Service configuration details
class ServiceConfigurationResponse {
  /// The port on which service is enabled.
  final double port;
  /// Name of the service.
  final String serviceName;

  /// Creates a new [ServiceConfigurationResponse].
  /// [port] The port on which service is enabled.
  /// [serviceName] Name of the service.
  ServiceConfigurationResponse({
    required this.port,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'serviceName': serviceName,
    };
  }

  factory ServiceConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ServiceConfigurationResponse(
      port: map['port'] as double,
      serviceName: map['serviceName'] as String,
    );
  }
}

