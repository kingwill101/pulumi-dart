// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceHealthCheckConfiguration {
  /// Number of consecutive checks that must succeed before App Runner decides that the service is healthy. Defaults to 1. Minimum value of 1. Maximum value of 20.
  final pulumi.Input<int>? healthyThreshold;
  /// Time interval, in seconds, between health checks. Defaults to 5. Minimum value of 1. Maximum value of 20.
  final pulumi.Input<int>? interval;
  /// URL to send requests to for health checks. Defaults to `/`. Minimum length of 0. Maximum length of 51200.
  final pulumi.Input<String>? path;
  /// IP protocol that App Runner uses to perform health checks for your service. Valid values: `TCP`, `HTTP`. Defaults to `TCP`. If you set protocol to `HTTP`, App Runner sends health check requests to the HTTP path specified by `path`.
  final pulumi.Input<String>? protocol;
  /// Time, in seconds, to wait for a health check response before deciding it failed. Defaults to 2. Minimum value of  1. Maximum value of 20.
  final pulumi.Input<int>? timeout;
  /// Number of consecutive checks that must fail before App Runner decides that the service is unhealthy. Defaults to 5. Minimum value of  1. Maximum value of 20.
  final pulumi.Input<int>? unhealthyThreshold;

  /// Creates a new [ServiceHealthCheckConfiguration].
  /// [healthyThreshold] Number of consecutive checks that must succeed before App Runner decides that the service is healthy. Defaults to 1. Minimum value of 1. Maximum value of 20.
  /// [interval] Time interval, in seconds, between health checks. Defaults to 5. Minimum value of 1. Maximum value of 20.
  /// [path] URL to send requests to for health checks. Defaults to `/`. Minimum length of 0. Maximum length of 51200.
  /// [protocol] IP protocol that App Runner uses to perform health checks for your service. Valid values: `TCP`, `HTTP`. Defaults to `TCP`. If you set protocol to `HTTP`, App Runner sends health check requests to the HTTP path specified by `path`.
  /// [timeout] Time, in seconds, to wait for a health check response before deciding it failed. Defaults to 2. Minimum value of  1. Maximum value of 20.
  /// [unhealthyThreshold] Number of consecutive checks that must fail before App Runner decides that the service is unhealthy. Defaults to 5. Minimum value of  1. Maximum value of 20.
  ServiceHealthCheckConfiguration({
    this.healthyThreshold,
    this.interval,
    this.path,
    this.protocol,
    this.timeout,
    this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthyThreshold': ?healthyThreshold,
      'interval': ?interval,
      'path': ?path,
      'protocol': ?protocol,
      'timeout': ?timeout,
      'unhealthyThreshold': ?unhealthyThreshold,
    };
  }

  factory ServiceHealthCheckConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceHealthCheckConfiguration(
      healthyThreshold: map['healthyThreshold'] == null ? null : (map['healthyThreshold'] as int).input(),
      interval: map['interval'] == null ? null : (map['interval'] as int).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      timeout: map['timeout'] == null ? null : (map['timeout'] as int).input(),
      unhealthyThreshold: map['unhealthyThreshold'] == null ? null : (map['unhealthyThreshold'] as int).input(),
    );
  }
}

