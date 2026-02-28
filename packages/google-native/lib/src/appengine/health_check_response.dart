// ignore_for_file: unused_element, unnecessary_cast


/// Health checking configuration for VM instances. Unhealthy instances are killed and replaced with new instances. Only applicable for instances in App Engine flexible environment.
class HealthCheckResponse {
  /// Interval between health checks.
  final String checkInterval;
  /// Whether to explicitly disable health checks for this instance.
  final bool disableHealthCheck;
  /// Number of consecutive successful health checks required before receiving traffic.
  final int healthyThreshold;
  /// Host header to send when performing an HTTP health check. Example: "myapp.appspot.com"
  final String host;
  /// Number of consecutive failed health checks required before an instance is restarted.
  final int restartThreshold;
  /// Time before the health check is considered failed.
  final String timeout;
  /// Number of consecutive failed health checks required before removing traffic.
  final int unhealthyThreshold;

  /// Creates a new [HealthCheckResponse].
  /// [checkInterval] Interval between health checks.
  /// [disableHealthCheck] Whether to explicitly disable health checks for this instance.
  /// [healthyThreshold] Number of consecutive successful health checks required before receiving traffic.
  /// [host] Host header to send when performing an HTTP health check. Example: "myapp.appspot.com"
  /// [restartThreshold] Number of consecutive failed health checks required before an instance is restarted.
  /// [timeout] Time before the health check is considered failed.
  /// [unhealthyThreshold] Number of consecutive failed health checks required before removing traffic.
  HealthCheckResponse({
    required this.checkInterval,
    required this.disableHealthCheck,
    required this.healthyThreshold,
    required this.host,
    required this.restartThreshold,
    required this.timeout,
    required this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkInterval': checkInterval,
      'disableHealthCheck': disableHealthCheck,
      'healthyThreshold': healthyThreshold,
      'host': host,
      'restartThreshold': restartThreshold,
      'timeout': timeout,
      'unhealthyThreshold': unhealthyThreshold,
    };
  }

  factory HealthCheckResponse.fromMap(Map<String, dynamic> map) {
    return HealthCheckResponse(
      checkInterval: map['checkInterval'] as String,
      disableHealthCheck: map['disableHealthCheck'] as bool,
      healthyThreshold: map['healthyThreshold'] as int,
      host: map['host'] as String,
      restartThreshold: map['restartThreshold'] as int,
      timeout: map['timeout'] as String,
      unhealthyThreshold: map['unhealthyThreshold'] as int,
    );
  }
}

