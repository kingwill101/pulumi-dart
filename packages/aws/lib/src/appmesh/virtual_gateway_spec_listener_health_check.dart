// ignore_for_file: unused_element, unnecessary_cast


class VirtualGatewaySpecListenerHealthCheck {
  /// Number of consecutive successful health checks that must occur before declaring listener healthy.
  final int healthyThreshold;
  /// Time period in milliseconds between each health check execution.
  final int intervalMillis;
  /// Destination path for the health check request. This is only required if the specified protocol is `http` or `http2`.
  final String? path;
  /// Destination port for the health check request. This port must match the port defined in the `port_mapping` for the listener.
  final int? port;
  /// Protocol for the health check request. Valid values are `http`, `http2`, and `grpc`.
  final String protocol;
  /// Amount of time to wait when receiving a response from the health check, in milliseconds.
  final int timeoutMillis;
  /// Number of consecutive failed health checks that must occur before declaring a virtual gateway unhealthy.
  final int unhealthyThreshold;

  /// Creates a new [VirtualGatewaySpecListenerHealthCheck].
  /// [healthyThreshold] Number of consecutive successful health checks that must occur before declaring listener healthy.
  /// [intervalMillis] Time period in milliseconds between each health check execution.
  /// [path] Destination path for the health check request. This is only required if the specified protocol is `http` or `http2`.
  /// [port] Destination port for the health check request. This port must match the port defined in the `port_mapping` for the listener.
  /// [protocol] Protocol for the health check request. Valid values are `http`, `http2`, and `grpc`.
  /// [timeoutMillis] Amount of time to wait when receiving a response from the health check, in milliseconds.
  /// [unhealthyThreshold] Number of consecutive failed health checks that must occur before declaring a virtual gateway unhealthy.
  VirtualGatewaySpecListenerHealthCheck({
    required this.healthyThreshold,
    required this.intervalMillis,
    this.path,
    this.port,
    required this.protocol,
    required this.timeoutMillis,
    required this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthyThreshold': healthyThreshold,
      'intervalMillis': intervalMillis,
      'path': ?path,
      'port': ?port,
      'protocol': protocol,
      'timeoutMillis': timeoutMillis,
      'unhealthyThreshold': unhealthyThreshold,
    };
  }

  factory VirtualGatewaySpecListenerHealthCheck.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecListenerHealthCheck(
      healthyThreshold: map['healthyThreshold'] as int,
      intervalMillis: map['intervalMillis'] as int,
      path: map['path'] == null ? null : map['path'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      protocol: map['protocol'] as String,
      timeoutMillis: map['timeoutMillis'] as int,
      unhealthyThreshold: map['unhealthyThreshold'] as int,
    );
  }
}

