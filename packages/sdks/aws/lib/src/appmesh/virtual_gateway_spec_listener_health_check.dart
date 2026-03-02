// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualGatewaySpecListenerHealthCheck {
  /// Number of consecutive successful health checks that must occur before declaring listener healthy.
  final pulumi.Input<int> healthyThreshold;
  /// Time period in milliseconds between each health check execution.
  final pulumi.Input<int> intervalMillis;
  /// Destination path for the health check request. This is only required if the specified protocol is `http` or `http2`.
  final pulumi.Input<String>? path;
  /// Destination port for the health check request. This port must match the port defined in the `port_mapping` for the listener.
  final pulumi.Input<int>? port;
  /// Protocol for the health check request. Valid values are `http`, `http2`, and `grpc`.
  final pulumi.Input<String> protocol;
  /// Amount of time to wait when receiving a response from the health check, in milliseconds.
  final pulumi.Input<int> timeoutMillis;
  /// Number of consecutive failed health checks that must occur before declaring a virtual gateway unhealthy.
  final pulumi.Input<int> unhealthyThreshold;

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
      healthyThreshold: (map['healthyThreshold'] as int).input(),
      intervalMillis: (map['intervalMillis'] as int).input(),
      path: map['path'] == null ? null : ((map['path'] as String).input()).input(),
      port: map['port'] == null ? null : ((map['port'] as int).input()).input(),
      protocol: (map['protocol'] as String).input(),
      timeoutMillis: (map['timeoutMillis'] as int).input(),
      unhealthyThreshold: (map['unhealthyThreshold'] as int).input(),
    );
  }
}

