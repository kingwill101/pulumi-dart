// ignore_for_file: unused_element, unnecessary_cast

/// Health checking configuration for VM instances. Unhealthy instances are killed and replaced with new instances. Only applicable for instances in App Engine flexible environment.
class HealthCheckAppengineV1beta {
  /// Interval between health checks.
  final String? checkInterval;

  /// Whether to explicitly disable health checks for this instance.
  final bool? disableHealthCheck;

  /// Number of consecutive successful health checks required before receiving traffic.
  final int? healthyThreshold;

  /// Host header to send when performing an HTTP health check. Example: "myapp.appspot.com"
  final String? host;

  /// Number of consecutive failed health checks required before an instance is restarted.
  final int? restartThreshold;

  /// Time before the health check is considered failed.
  final String? timeout;

  /// Number of consecutive failed health checks required before removing traffic.
  final int? unhealthyThreshold;

  /// Creates a new [HealthCheckAppengineV1beta].
  /// [checkInterval] Interval between health checks.
  /// [disableHealthCheck] Whether to explicitly disable health checks for this instance.
  /// [healthyThreshold] Number of consecutive successful health checks required before receiving traffic.
  /// [host] Host header to send when performing an HTTP health check. Example: "myapp.appspot.com"
  /// [restartThreshold] Number of consecutive failed health checks required before an instance is restarted.
  /// [timeout] Time before the health check is considered failed.
  /// [unhealthyThreshold] Number of consecutive failed health checks required before removing traffic.
  HealthCheckAppengineV1beta({
    this.checkInterval,
    this.disableHealthCheck,
    this.healthyThreshold,
    this.host,
    this.restartThreshold,
    this.timeout,
    this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final checkIntervalValue = checkInterval;
    if (checkIntervalValue != null) {
      map['checkInterval'] = checkIntervalValue;
    }
    final disableHealthCheckValue = disableHealthCheck;
    if (disableHealthCheckValue != null) {
      map['disableHealthCheck'] = disableHealthCheckValue;
    }
    final healthyThresholdValue = healthyThreshold;
    if (healthyThresholdValue != null) {
      map['healthyThreshold'] = healthyThresholdValue;
    }
    final hostValue = host;
    if (hostValue != null) {
      map['host'] = hostValue;
    }
    final restartThresholdValue = restartThreshold;
    if (restartThresholdValue != null) {
      map['restartThreshold'] = restartThresholdValue;
    }
    final timeoutValue = timeout;
    if (timeoutValue != null) {
      map['timeout'] = timeoutValue;
    }
    final unhealthyThresholdValue = unhealthyThreshold;
    if (unhealthyThresholdValue != null) {
      map['unhealthyThreshold'] = unhealthyThresholdValue;
    }
    return map;
  }

  factory HealthCheckAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return HealthCheckAppengineV1beta(
      checkInterval:
          map['checkInterval'] == null ? null : map['checkInterval'] as String,
      disableHealthCheck: map['disableHealthCheck'] == null
          ? null
          : map['disableHealthCheck'] as bool,
      healthyThreshold: map['healthyThreshold'] == null
          ? null
          : map['healthyThreshold'] as int,
      host: map['host'] == null ? null : map['host'] as String,
      restartThreshold: map['restartThreshold'] == null
          ? null
          : map['restartThreshold'] as int,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
      unhealthyThreshold: map['unhealthyThreshold'] == null
          ? null
          : map['unhealthyThreshold'] as int,
    );
  }
}
