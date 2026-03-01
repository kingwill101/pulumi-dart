// ignore_for_file: unused_element, unnecessary_cast


/// Service configuration details
class ServiceConfiguration {
  /// The port on which service is enabled.
  final double port;
  /// Name of the service.
  final String serviceName;

  /// Creates a new [ServiceConfiguration].
  /// [port] The port on which service is enabled.
  /// [serviceName] Name of the service.
  ServiceConfiguration({
    required this.port,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'serviceName': serviceName,
    };
  }

  factory ServiceConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceConfiguration(
      port: map['port'] as double,
      serviceName: map['serviceName'] as String,
    );
  }
}

