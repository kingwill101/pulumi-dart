// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TargetGroupHealthCheck {
  /// Whether health checks are enabled. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Number of consecutive health check successes required before considering a target healthy. The range is 2-10. Defaults to 3.
  final pulumi.Input<int>? healthyThreshold;
  /// Approximate amount of time, in seconds, between health checks of an individual target. The range is 5-300. For `lambda` target groups, it needs to be greater than the timeout of the underlying `lambda`. Defaults to 30.
  final pulumi.Input<int>? interval;
  /// The HTTP or gRPC codes to use when checking for a successful response from a target.
  /// The `health_check.protocol` must be one of `HTTP` or `HTTPS` or the `targetType` must be `lambda`.
  /// Values can be comma-separated individual values (e.g., "200,202") or a range of values (e.g., "200-299").
  /// Once the value has been set, removing it has no effect. To unset it, set it to an empty string `""`.
  /// * For gRPC-based target groups (i.e., the `protocol` is one of `HTTP` or `HTTPS` and the `protocolVersion` is `GRPC`), values can be between `0` and `99`. The default is `12`.
  /// * When used with an Application Load Balancer (i.e., the `protocol` is one of `HTTP` or `HTTPS` and the `protocolVersion` is not `GRPC`), values can be between `200` and `499`. The default is `200`.
  /// * When used with a Network Load Balancer (i.e., the `protocol` is one of `TCP`, `TCP_UDP`, `UDP`, or `TLS`), values can be between `200` and `599`. The default is `200-399`.
  /// * When the `targetType` is `lambda`, values can be between `200` and `499`. The default is `200`.
  final pulumi.Input<String>? matcher;
  /// Destination for the health check request. Required for HTTP/HTTPS ALB and HTTP NLB. Only applies to HTTP/HTTPS.
  /// Once the value has been set, removing it has no effect. To unset it, set it to an empty string `""`.
  /// * For HTTP and HTTPS health checks, the default is `/`.
  /// * For gRPC health checks, the default is `/AWS.ALB/healthcheck`.
  final pulumi.Input<String>? path;
  /// The port the load balancer uses when performing health checks on targets.
  /// Valid values are either `traffic-port`, to use the same port as the target group, or a valid port number between `1` and `65536`.
  /// Default is `traffic-port`.
  final pulumi.Input<String>? port;
  /// Protocol the load balancer uses when performing health checks on targets.
  /// Must be one of `TCP`, `HTTP`, or `HTTPS`.
  /// The `TCP` protocol is not supported for health checks if the protocol of the target group is `HTTP` or `HTTPS`.
  /// Default is `HTTP`.
  /// Cannot be specified when the `targetType` is `lambda`.
  final pulumi.Input<String>? protocol;
  /// Amount of time, in seconds, during which no response from a target means a failed health check. The range is 2–120 seconds. For target groups with a protocol of HTTP, the default is 6 seconds. For target groups with a protocol of TCP, TLS or HTTPS, the default is 10 seconds. For target groups with a protocol of GENEVE, the default is 5 seconds. If the target type is lambda, the default is 30 seconds.
  final pulumi.Input<int>? timeout;
  /// Number of consecutive health check failures required before considering a target unhealthy. The range is 2-10. Defaults to 3.
  final pulumi.Input<int>? unhealthyThreshold;

  /// Creates a new [TargetGroupHealthCheck].
  /// [enabled] Whether health checks are enabled. Defaults to `true`.
  /// [healthyThreshold] Number of consecutive health check successes required before considering a target healthy. The range is 2-10. Defaults to 3.
  /// [interval] Approximate amount of time, in seconds, between health checks of an individual target. The range is 5-300. For `lambda` target groups, it needs to be greater than the timeout of the underlying `lambda`. Defaults to 30.
  /// [matcher] The HTTP or gRPC codes to use when checking for a successful response from a target.
  /// [path] Destination for the health check request. Required for HTTP/HTTPS ALB and HTTP NLB. Only applies to HTTP/HTTPS.
  /// [port] The port the load balancer uses when performing health checks on targets.
  /// [protocol] Protocol the load balancer uses when performing health checks on targets.
  /// [timeout] Amount of time, in seconds, during which no response from a target means a failed health check. The range is 2–120 seconds. For target groups with a protocol of HTTP, the default is 6 seconds. For target groups with a protocol of TCP, TLS or HTTPS, the default is 10 seconds. For target groups with a protocol of GENEVE, the default is 5 seconds. If the target type is lambda, the default is 30 seconds.
  /// [unhealthyThreshold] Number of consecutive health check failures required before considering a target unhealthy. The range is 2-10. Defaults to 3.
  const TargetGroupHealthCheck({
    this.enabled,
    this.healthyThreshold,
    this.interval,
    this.matcher,
    this.path,
    this.port,
    this.protocol,
    this.timeout,
    this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'healthyThreshold': ?healthyThreshold,
      'interval': ?interval,
      'matcher': ?matcher,
      'path': ?path,
      'port': ?port,
      'protocol': ?protocol,
      'timeout': ?timeout,
      'unhealthyThreshold': ?unhealthyThreshold,
    };
  }

  factory TargetGroupHealthCheck.fromMap(Map<String, dynamic> map) {
    return TargetGroupHealthCheck(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      healthyThreshold: (() { final guardedValue = map['healthyThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      matcher: (() { final guardedValue = map['matcher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      unhealthyThreshold: (() { final guardedValue = map['unhealthyThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
