// ignore_for_file: unused_element, unnecessary_cast

class ServiceHealthCheckConfiguration {
  /// Number of consecutive checks that must succeed before App Runner decides that the service is healthy. Defaults to 1. Minimum value of 1. Maximum value of 20.
  final int? healthyThreshold;

  /// Time interval, in seconds, between health checks. Defaults to 5. Minimum value of 1. Maximum value of 20.
  final int? interval;

  /// URL to send requests to for health checks. Defaults to `/`. Minimum length of 0. Maximum length of 51200.
  final String? path;

  /// IP protocol that App Runner uses to perform health checks for your service. Valid values: `TCP`, `HTTP`. Defaults to `TCP`. If you set protocol to `HTTP`, App Runner sends health check requests to the HTTP path specified by <span pulumi-lang-nodejs="`path`" pulumi-lang-dotnet="`Path`" pulumi-lang-go="`path`" pulumi-lang-python="`path`" pulumi-lang-yaml="`path`" pulumi-lang-java="`path`">`path`</span>.
  final String? protocol;

  /// Time, in seconds, to wait for a health check response before deciding it failed. Defaults to 2. Minimum value of  1. Maximum value of 20.
  final int? timeout;

  /// Number of consecutive checks that must fail before App Runner decides that the service is unhealthy. Defaults to 5. Minimum value of  1. Maximum value of 20.
  final int? unhealthyThreshold;

  ServiceHealthCheckConfiguration({
    this.healthyThreshold,
    this.interval,
    this.path,
    this.protocol,
    this.timeout,
    this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final healthyThresholdValue = healthyThreshold;
    if (healthyThresholdValue != null) {
      map['healthyThreshold'] = healthyThresholdValue;
    }
    final intervalValue = interval;
    if (intervalValue != null) {
      map['interval'] = intervalValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue;
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

  factory ServiceHealthCheckConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceHealthCheckConfiguration(
      healthyThreshold: map['healthyThreshold'] == null
          ? null
          : map['healthyThreshold'] as int,
      interval: map['interval'] == null ? null : map['interval'] as int,
      path: map['path'] == null ? null : map['path'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
      unhealthyThreshold: map['unhealthyThreshold'] == null
          ? null
          : map['unhealthyThreshold'] as int,
    );
  }
}
