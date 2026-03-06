// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_group_config_health_check_matcher.dart';

class TargetGroupConfigHealthCheck {
  /// Indicates whether health checking is enabled. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The approximate amount of time, in seconds, between health checks of an individual target. The range is 5–300 seconds. The default is 30 seconds.
  final pulumi.Input<int>? healthCheckIntervalSeconds;
  /// The amount of time, in seconds, to wait before reporting a target as unhealthy. The range is 1–120 seconds. The default is 5 seconds.
  /// * `healthy_threshold_count ` - (Optional) The number of consecutive successful health checks required before considering an unhealthy target healthy. The range is 2–10. The default is 5.
  final pulumi.Input<int>? healthCheckTimeoutSeconds;
  final pulumi.Input<int>? healthyThresholdCount;
  /// The codes to use when checking for a successful response from a target. These are called _Success codes_ in the console.
  final pulumi.Input<TargetGroupConfigHealthCheckMatcher>? matcher;
  /// The destination for health checks on the targets. If the protocol version is HTTP/1.1 or HTTP/2, specify a valid URI (for example, /path?query). The default path is `/`. Health checks are not supported if the protocol version is gRPC, however, you can choose HTTP/1.1 or HTTP/2 and specify a valid URI.
  final pulumi.Input<String>? path;
  /// The port used when performing health checks on targets. The default setting is the port that a target receives traffic on.
  final pulumi.Input<int>? port;
  /// The protocol used when performing health checks on targets. The possible protocols are `HTTP` and `HTTPS`.
  final pulumi.Input<String>? protocol;
  /// The protocol version used when performing health checks on targets. The possible protocol versions are `HTTP1` and `HTTP2`. The default is `HTTP1`.
  final pulumi.Input<String>? protocolVersion;
  /// The number of consecutive failed health checks required before considering a target unhealthy. The range is 2–10. The default is 2.
  final pulumi.Input<int>? unhealthyThresholdCount;

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
  const TargetGroupConfigHealthCheck({
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
      'matcher': ?pulumi.Input.mapOptionalInputValue<TargetGroupConfigHealthCheckMatcher, Map<String, dynamic>>(matcher, (value) => value.toMap()),
      'path': ?path,
      'port': ?port,
      'protocol': ?protocol,
      'protocolVersion': ?protocolVersion,
      'unhealthyThresholdCount': ?unhealthyThresholdCount,
    };
  }

  factory TargetGroupConfigHealthCheck.fromMap(Map<String, dynamic> map) {
    return TargetGroupConfigHealthCheck(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      healthCheckIntervalSeconds: (() { final guardedValue = map['healthCheckIntervalSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      healthCheckTimeoutSeconds: (() { final guardedValue = map['healthCheckTimeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      healthyThresholdCount: (() { final guardedValue = map['healthyThresholdCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      matcher: (() { final guardedValue = map['matcher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TargetGroupConfigHealthCheckMatcher.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocolVersion: (() { final guardedValue = map['protocolVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      unhealthyThresholdCount: (() { final guardedValue = map['unhealthyThresholdCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

