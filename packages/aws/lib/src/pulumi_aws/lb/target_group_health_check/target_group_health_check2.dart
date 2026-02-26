// ignore_for_file: unused_element, unnecessary_cast

class TargetGroupHealthCheck2 {
  /// Whether health checks are enabled. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final bool? enabled;

  /// Number of consecutive health check successes required before considering a target healthy. The range is 2-10. Defaults to 3.
  final int? healthyThreshold;

  /// Approximate amount of time, in seconds, between health checks of an individual target. The range is 5-300. For <span pulumi-lang-nodejs="`lambda`" pulumi-lang-dotnet="`Lambda`" pulumi-lang-go="`lambda`" pulumi-lang-python="`lambda`" pulumi-lang-yaml="`lambda`" pulumi-lang-java="`lambda`">`lambda`</span> target groups, it needs to be greater than the timeout of the underlying <span pulumi-lang-nodejs="`lambda`" pulumi-lang-dotnet="`Lambda`" pulumi-lang-go="`lambda`" pulumi-lang-python="`lambda`" pulumi-lang-yaml="`lambda`" pulumi-lang-java="`lambda`">`lambda`</span>. Defaults to 30.
  final int? interval;

  /// The HTTP or gRPC codes to use when checking for a successful response from a target.
  /// The `health_check.protocol` must be one of `HTTP` or `HTTPS` or the <span pulumi-lang-nodejs="`targetType`" pulumi-lang-dotnet="`TargetType`" pulumi-lang-go="`targetType`" pulumi-lang-python="`target_type`" pulumi-lang-yaml="`targetType`" pulumi-lang-java="`targetType`">`target_type`</span> must be <span pulumi-lang-nodejs="`lambda`" pulumi-lang-dotnet="`Lambda`" pulumi-lang-go="`lambda`" pulumi-lang-python="`lambda`" pulumi-lang-yaml="`lambda`" pulumi-lang-java="`lambda`">`lambda`</span>.
  /// Values can be comma-separated individual values (e.g., "200,202") or a range of values (e.g., "200-299").
  /// Once the value has been set, removing it has no effect. To unset it, set it to an empty string `""`.
  /// * For gRPC-based target groups (i.e., the <span pulumi-lang-nodejs="`protocol`" pulumi-lang-dotnet="`Protocol`" pulumi-lang-go="`protocol`" pulumi-lang-python="`protocol`" pulumi-lang-yaml="`protocol`" pulumi-lang-java="`protocol`">`protocol`</span> is one of `HTTP` or `HTTPS` and the <span pulumi-lang-nodejs="`protocolVersion`" pulumi-lang-dotnet="`ProtocolVersion`" pulumi-lang-go="`protocolVersion`" pulumi-lang-python="`protocol_version`" pulumi-lang-yaml="`protocolVersion`" pulumi-lang-java="`protocolVersion`">`protocol_version`</span> is `GRPC`), values can be between <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> and <span pulumi-lang-nodejs="`99`" pulumi-lang-dotnet="`99`" pulumi-lang-go="`99`" pulumi-lang-python="`99`" pulumi-lang-yaml="`99`" pulumi-lang-java="`99`">`99`</span>. The default is <span pulumi-lang-nodejs="`12`" pulumi-lang-dotnet="`12`" pulumi-lang-go="`12`" pulumi-lang-python="`12`" pulumi-lang-yaml="`12`" pulumi-lang-java="`12`">`12`</span>.
  /// * When used with an Application Load Balancer (i.e., the <span pulumi-lang-nodejs="`protocol`" pulumi-lang-dotnet="`Protocol`" pulumi-lang-go="`protocol`" pulumi-lang-python="`protocol`" pulumi-lang-yaml="`protocol`" pulumi-lang-java="`protocol`">`protocol`</span> is one of `HTTP` or `HTTPS` and the <span pulumi-lang-nodejs="`protocolVersion`" pulumi-lang-dotnet="`ProtocolVersion`" pulumi-lang-go="`protocolVersion`" pulumi-lang-python="`protocol_version`" pulumi-lang-yaml="`protocolVersion`" pulumi-lang-java="`protocolVersion`">`protocol_version`</span> is not `GRPC`), values can be between <span pulumi-lang-nodejs="`200`" pulumi-lang-dotnet="`200`" pulumi-lang-go="`200`" pulumi-lang-python="`200`" pulumi-lang-yaml="`200`" pulumi-lang-java="`200`">`200`</span> and <span pulumi-lang-nodejs="`499`" pulumi-lang-dotnet="`499`" pulumi-lang-go="`499`" pulumi-lang-python="`499`" pulumi-lang-yaml="`499`" pulumi-lang-java="`499`">`499`</span>. The default is <span pulumi-lang-nodejs="`200`" pulumi-lang-dotnet="`200`" pulumi-lang-go="`200`" pulumi-lang-python="`200`" pulumi-lang-yaml="`200`" pulumi-lang-java="`200`">`200`</span>.
  /// * When used with a Network Load Balancer (i.e., the <span pulumi-lang-nodejs="`protocol`" pulumi-lang-dotnet="`Protocol`" pulumi-lang-go="`protocol`" pulumi-lang-python="`protocol`" pulumi-lang-yaml="`protocol`" pulumi-lang-java="`protocol`">`protocol`</span> is one of `TCP`, `TCP_UDP`, `UDP`, or `TLS`), values can be between <span pulumi-lang-nodejs="`200`" pulumi-lang-dotnet="`200`" pulumi-lang-go="`200`" pulumi-lang-python="`200`" pulumi-lang-yaml="`200`" pulumi-lang-java="`200`">`200`</span> and <span pulumi-lang-nodejs="`599`" pulumi-lang-dotnet="`599`" pulumi-lang-go="`599`" pulumi-lang-python="`599`" pulumi-lang-yaml="`599`" pulumi-lang-java="`599`">`599`</span>. The default is `200-399`.
  /// * When the <span pulumi-lang-nodejs="`targetType`" pulumi-lang-dotnet="`TargetType`" pulumi-lang-go="`targetType`" pulumi-lang-python="`target_type`" pulumi-lang-yaml="`targetType`" pulumi-lang-java="`targetType`">`target_type`</span> is <span pulumi-lang-nodejs="`lambda`" pulumi-lang-dotnet="`Lambda`" pulumi-lang-go="`lambda`" pulumi-lang-python="`lambda`" pulumi-lang-yaml="`lambda`" pulumi-lang-java="`lambda`">`lambda`</span>, values can be between <span pulumi-lang-nodejs="`200`" pulumi-lang-dotnet="`200`" pulumi-lang-go="`200`" pulumi-lang-python="`200`" pulumi-lang-yaml="`200`" pulumi-lang-java="`200`">`200`</span> and <span pulumi-lang-nodejs="`499`" pulumi-lang-dotnet="`499`" pulumi-lang-go="`499`" pulumi-lang-python="`499`" pulumi-lang-yaml="`499`" pulumi-lang-java="`499`">`499`</span>. The default is <span pulumi-lang-nodejs="`200`" pulumi-lang-dotnet="`200`" pulumi-lang-go="`200`" pulumi-lang-python="`200`" pulumi-lang-yaml="`200`" pulumi-lang-java="`200`">`200`</span>.
  final String? matcher;

  /// Destination for the health check request. Required for HTTP/HTTPS ALB and HTTP NLB. Only applies to HTTP/HTTPS.
  /// Once the value has been set, removing it has no effect. To unset it, set it to an empty string `""`.
  /// * For HTTP and HTTPS health checks, the default is `/`.
  /// * For gRPC health checks, the default is `/AWS.ALB/healthcheck`.
  final String? path;

  /// The port the load balancer uses when performing health checks on targets.
  /// Valid values are either `traffic-port`, to use the same port as the target group, or a valid port number between <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> and <span pulumi-lang-nodejs="`65536`" pulumi-lang-dotnet="`65536`" pulumi-lang-go="`65536`" pulumi-lang-python="`65536`" pulumi-lang-yaml="`65536`" pulumi-lang-java="`65536`">`65536`</span>.
  /// Default is `traffic-port`.
  final String? port;

  /// Protocol the load balancer uses when performing health checks on targets.
  /// Must be one of `TCP`, `HTTP`, or `HTTPS`.
  /// The `TCP` protocol is not supported for health checks if the protocol of the target group is `HTTP` or `HTTPS`.
  /// Default is `HTTP`.
  /// Cannot be specified when the <span pulumi-lang-nodejs="`targetType`" pulumi-lang-dotnet="`TargetType`" pulumi-lang-go="`targetType`" pulumi-lang-python="`target_type`" pulumi-lang-yaml="`targetType`" pulumi-lang-java="`targetType`">`target_type`</span> is <span pulumi-lang-nodejs="`lambda`" pulumi-lang-dotnet="`Lambda`" pulumi-lang-go="`lambda`" pulumi-lang-python="`lambda`" pulumi-lang-yaml="`lambda`" pulumi-lang-java="`lambda`">`lambda`</span>.
  final String? protocol;

  /// Amount of time, in seconds, during which no response from a target means a failed health check. The range is 2–120 seconds. For target groups with a protocol of HTTP, the default is 6 seconds. For target groups with a protocol of TCP, TLS or HTTPS, the default is 10 seconds. For target groups with a protocol of GENEVE, the default is 5 seconds. If the target type is lambda, the default is 30 seconds.
  final int? timeout;

  /// Number of consecutive health check failures required before considering a target unhealthy. The range is 2-10. Defaults to 3.
  final int? unhealthyThreshold;

  TargetGroupHealthCheck2({
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

  factory TargetGroupHealthCheck2.fromMap(Map<String, dynamic> map) {
    return TargetGroupHealthCheck2(
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
