// ignore_for_file: unused_element, unnecessary_cast

import 'target_group_config_health_check_matcher.dart';

class TargetGroupConfigHealthCheck {
  /// Indicates whether health checking is enabled. Defaults to `true`.
  final bool? enabled;
  /// The approximate amount of time, in seconds, between health checks of an individual target. The range is 5–300 seconds. The default is 30 seconds.
  final int? healthCheckIntervalSeconds;
  /// The amount of time, in seconds, to wait before reporting a target as unhealthy. The range is 1–120 seconds. The default is 5 seconds.
  /// * `healthy_threshold_count ` - (Optional) The number of consecutive successful health checks required before considering an unhealthy target healthy. The range is 2–10. The default is 5.
  final int? healthCheckTimeoutSeconds;
  final int? healthyThresholdCount;
  /// The codes to use when checking for a successful response from a target. These are called _Success codes_ in the console.
  final TargetGroupConfigHealthCheckMatcher? matcher;
  /// The destination for health checks on the targets. If the protocol version is HTTP/1.1 or HTTP/2, specify a valid URI (for example, /path?query). The default path is `/`. Health checks are not supported if the protocol version is gRPC, however, you can choose HTTP/1.1 or HTTP/2 and specify a valid URI.
  final String? path;
  /// The port used when performing health checks on targets. The default setting is the port that a target receives traffic on.
  final int? port;
  /// The protocol used when performing health checks on targets. The possible protocols are `HTTP` and `HTTPS`.
  final String? protocol;
  /// The protocol version used when performing health checks on targets. The possible protocol versions are `HTTP1` and `HTTP2`. The default is `HTTP1`.
  final String? protocolVersion;
  /// The number of consecutive failed health checks required before considering a target unhealthy. The range is 2–10. The default is 2.
  final int? unhealthyThresholdCount;

  /// Creates a new [TargetGroupConfigHealthCheck].
  /// [enabled] Indicates whether health checking is enabled. Defaults to `true`.
  /// [healthCheckIntervalSeconds] The approximate amount of time, in seconds, between health checks of an individual target. The range is 5–300 seconds. The default is 30 seconds.
  /// [healthCheckTimeoutSeconds] The amount of time, in seconds, to wait before reporting a target as unhealthy. The range is 1–120 seconds. The default is 5 seconds.
  /// [healthyThresholdCount] Optional.
  /// [matcher] The codes to use when checking for a successful response from a target. These are called _Success codes_ in the console.
  /// [path] The destination for health checks on the targets. If the protocol version is HTTP/1.1 or HTTP/2, specify a valid URI (for example, /path?query). The default path is `/`. Health checks are not supported if the protocol version is gRPC, however, you can choose HTTP/1.1 or HTTP/2 and specify a valid URI.
  /// [port] The port used when performing health checks on targets. The default setting is the port that a target receives traffic on.
  /// [protocol] The protocol used when performing health checks on targets. The possible protocols are `HTTP` and `HTTPS`.
  /// [protocolVersion] The protocol version used when performing health checks on targets. The possible protocol versions are `HTTP1` and `HTTP2`. The default is `HTTP1`.
  /// [unhealthyThresholdCount] The number of consecutive failed health checks required before considering a target unhealthy. The range is 2–10. The default is 2.
  TargetGroupConfigHealthCheck({
    this.enabled,
    this.healthCheckIntervalSeconds,
    this.healthCheckTimeoutSeconds,
    this.healthyThresholdCount,
    this.matcher,
    this.path,
    this.port,
    this.protocol,
    this.protocolVersion,
    this.unhealthyThresholdCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'healthCheckIntervalSeconds': ?healthCheckIntervalSeconds,
      'healthCheckTimeoutSeconds': ?healthCheckTimeoutSeconds,
      'healthyThresholdCount': ?healthyThresholdCount,
      'matcher': ?matcher == null ? null : matcher!.toMap(),
      'path': ?path,
      'port': ?port,
      'protocol': ?protocol,
      'protocolVersion': ?protocolVersion,
      'unhealthyThresholdCount': ?unhealthyThresholdCount,
    };
  }

  factory TargetGroupConfigHealthCheck.fromMap(Map<String, dynamic> map) {
    return TargetGroupConfigHealthCheck(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      healthCheckIntervalSeconds: map['healthCheckIntervalSeconds'] == null ? null : map['healthCheckIntervalSeconds'] as int,
      healthCheckTimeoutSeconds: map['healthCheckTimeoutSeconds'] == null ? null : map['healthCheckTimeoutSeconds'] as int,
      healthyThresholdCount: map['healthyThresholdCount'] == null ? null : map['healthyThresholdCount'] as int,
      matcher: map['matcher'] == null ? null : TargetGroupConfigHealthCheckMatcher.fromMap((map['matcher'] as Map).cast<String, dynamic>()),
      path: map['path'] == null ? null : map['path'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      protocolVersion: map['protocolVersion'] == null ? null : map['protocolVersion'] as String,
      unhealthyThresholdCount: map['unhealthyThresholdCount'] == null ? null : map['unhealthyThresholdCount'] as int,
    );
  }
}

