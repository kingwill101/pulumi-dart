// ignore_for_file: unused_element, unnecessary_cast

class ServiceHealthCheckConfig {
  /// The number of consecutive health checks. Maximum value of 10.
  final int? failureThreshold;

  /// The path that you want Route 53 to request when performing health checks. Route 53 automatically adds the DNS name for the service. If you don't specify a value, the default value is /.
  final String? resourcePath;

  /// The type of health check that you want to create, which indicates how Route 53 determines whether an endpoint is healthy. Valid Values: HTTP, HTTPS, TCP
  final String? type;

  /// Creates a new [ServiceHealthCheckConfig].
  /// [failureThreshold] The number of consecutive health checks. Maximum value of 10.
  /// [resourcePath] The path that you want Route 53 to request when performing health checks. Route 53 automatically adds the DNS name for the service. If you don't specify a value, the default value is /.
  /// [type] The type of health check that you want to create, which indicates how Route 53 determines whether an endpoint is healthy. Valid Values: HTTP, HTTPS, TCP
  ServiceHealthCheckConfig({
    this.failureThreshold,
    this.resourcePath,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureThreshold': ?failureThreshold,
      'resourcePath': ?resourcePath,
      'type': ?type,
    };
  }

  factory ServiceHealthCheckConfig.fromMap(Map<String, dynamic> map) {
    return ServiceHealthCheckConfig(
      failureThreshold: map['failureThreshold'] == null
          ? null
          : map['failureThreshold'] as int,
      resourcePath: map['resourcePath'] == null
          ? null
          : map['resourcePath'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
