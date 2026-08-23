// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceHealthCheckConfig {
  /// The number of 30-second intervals that you want service discovery to wait before it changes the health status of a service instance.  Maximum value of 10.
  final pulumi.Input<int> failureThreshold;
  /// Path that you want Route 53 to request when performing health checks. Route 53 automatically adds the DNS name for the service. If you don't specify a value, the default value is /.
  final pulumi.Input<String> resourcePath;
  /// The type of health check that you want to create, which indicates how Route 53 determines whether an endpoint is healthy. Valid Values: HTTP, HTTPS, TCP
  final pulumi.Input<String> type;

  /// Creates a new [GetServiceHealthCheckConfig].
  /// [failureThreshold] The number of 30-second intervals that you want service discovery to wait before it changes the health status of a service instance.  Maximum value of 10.
  /// [resourcePath] Path that you want Route 53 to request when performing health checks. Route 53 automatically adds the DNS name for the service. If you don't specify a value, the default value is /.
  /// [type] The type of health check that you want to create, which indicates how Route 53 determines whether an endpoint is healthy. Valid Values: HTTP, HTTPS, TCP
  const GetServiceHealthCheckConfig({
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
      failureThreshold: pulumi.Input.fromValue(map['failureThreshold'] as int),
      resourcePath: pulumi.Input.fromValue(map['resourcePath'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
