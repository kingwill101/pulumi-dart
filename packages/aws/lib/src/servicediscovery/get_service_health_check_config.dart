// ignore_for_file: unused_element, unnecessary_cast


class GetServiceHealthCheckConfig {
  /// The number of 30-second intervals that you want service discovery to wait before it changes the health status of a service instance.  Maximum value of 10.
  final int failureThreshold;
  /// Path that you want Route 53 to request when performing health checks. Route 53 automatically adds the DNS name for the service. If you don't specify a value, the default value is /.
  final String resourcePath;
  /// The type of health check that you want to create, which indicates how Route 53 determines whether an endpoint is healthy. Valid Values: HTTP, HTTPS, TCP
  final String type;

  /// Creates a new [GetServiceHealthCheckConfig].
  /// [failureThreshold] The number of 30-second intervals that you want service discovery to wait before it changes the health status of a service instance.  Maximum value of 10.
  /// [resourcePath] Path that you want Route 53 to request when performing health checks. Route 53 automatically adds the DNS name for the service. If you don't specify a value, the default value is /.
  /// [type] The type of health check that you want to create, which indicates how Route 53 determines whether an endpoint is healthy. Valid Values: HTTP, HTTPS, TCP
  GetServiceHealthCheckConfig({
    required this.failureThreshold,
    required this.resourcePath,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureThreshold': failureThreshold,
      'resourcePath': resourcePath,
      'type': type,
    };
  }

  factory GetServiceHealthCheckConfig.fromMap(Map<String, dynamic> map) {
    return GetServiceHealthCheckConfig(
      failureThreshold: map['failureThreshold'] as int,
      resourcePath: map['resourcePath'] as String,
      type: map['type'] as String,
    );
  }
}

