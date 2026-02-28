// ignore_for_file: unused_element, unnecessary_cast

class TargetGroupHealthCheck {
  /// Whether health checks are enabled. Defaults to `true`.
  final bool? enabled;

  /// Number of consecutive health check successes required before considering a target healthy. The range is 2-10. Defaults to 3.
  final int? healthyThreshold;

  /// Approximate amount of time, in seconds, between health checks of an individual target. The range is 5-300. For `lambda` target groups, it needs to be greater than the timeout of the underlying `lambda`. Defaults to 30.
  final int? interval;

  /// The HTTP or gRPC codes to use when checking for a successful response from a target.
  /// The `health_check.protocol` must be one of `HTTP` or `HTTPS` or the `target_type` must be `lambda`.
  /// Values can be comma-separated individual values (e.g., "200,202") or a range of values (e.g., "200-299").
  /// Once the value has been set, removing it has no effect. To unset it, set it to an empty string `""`.
  /// * For gRPC-based target groups (i.e., the `protocol` is one of `HTTP` or `HTTPS` and the `protocol_version` is `GRPC`), values can be between `0` and `99`. The default is `12`.
  /// * When used with an Application Load Balancer (i.e., the `protocol` is one of `HTTP` or `HTTPS` and the `protocol_version` is not `GRPC`), values can be between `200` and `499`. The default is `200`.
  /// * When used with a Network Load Balancer (i.e., the `protocol` is one of `TCP`, `TCP_UDP`, `UDP`, or `TLS`), values can be between `200` and `599`. The default is `200-399`.
  /// * When the `target_type` is `lambda`, values can be between `200` and `499`. The default is `200`.
  final String? matcher;

  /// Destination for the health check request. Required for HTTP/HTTPS ALB and HTTP NLB. Only applies to HTTP/HTTPS.
  /// Once the value has been set, removing it has no effect. To unset it, set it to an empty string `""`.
  /// * For HTTP and HTTPS health checks, the default is `/`.
  /// * For gRPC health checks, the default is `/AWS.ALB/healthcheck`.
  final String? path;

  /// The port the load balancer uses when performing health checks on targets.
  /// Valid values are either `traffic-port`, to use the same port as the target group, or a valid port number between `1` and `65536`.
  /// Default is `traffic-port`.
  final String? port;

  /// Protocol the load balancer uses when performing health checks on targets.
  /// Must be one of `TCP`, `HTTP`, or `HTTPS`.
  /// The `TCP` protocol is not supported for health checks if the protocol of the target group is `HTTP` or `HTTPS`.
  /// Default is `HTTP`.
  /// Cannot be specified when the `target_type` is `lambda`.
  final String? protocol;

  /// Amount of time, in seconds, during which no response from a target means a failed health check. The range is 2–120 seconds. For target groups with a protocol of HTTP, the default is 6 seconds. For target groups with a protocol of TCP, TLS or HTTPS, the default is 10 seconds. For target groups with a protocol of GENEVE, the default is 5 seconds. If the target type is lambda, the default is 30 seconds.
  final int? timeout;

  /// Number of consecutive health check failures required before considering a target unhealthy. The range is 2-10. Defaults to 3.
  final int? unhealthyThreshold;

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
  TargetGroupHealthCheck({
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
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final healthyThresholdValue = healthyThreshold;
    if (healthyThresholdValue != null) {
      map['healthyThreshold'] = healthyThresholdValue;
    }
    final intervalValue = interval;
    if (intervalValue != null) {
      map['interval'] = intervalValue;
    }
    final matcherValue = matcher;
    if (matcherValue != null) {
      map['matcher'] = matcherValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
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

  factory TargetGroupHealthCheck.fromMap(Map<String, dynamic> map) {
    return TargetGroupHealthCheck(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      healthyThreshold: map['healthyThreshold'] == null
          ? null
          : map['healthyThreshold'] as int,
      interval: map['interval'] == null ? null : map['interval'] as int,
      matcher: map['matcher'] == null ? null : map['matcher'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      port: map['port'] == null ? null : map['port'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
      unhealthyThreshold: map['unhealthyThreshold'] == null
          ? null
          : map['unhealthyThreshold'] as int,
    );
  }
}
