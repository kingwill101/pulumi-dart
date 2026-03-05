// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNodeSpecListenerHealthCheck {
  /// Number of consecutive successful health checks that must occur before declaring listener healthy.
  final pulumi.Input<int> healthyThreshold;
  /// Time period in milliseconds between each health check execution.
  final pulumi.Input<int> intervalMillis;
  /// Destination path for the health check request. This is only required if the specified protocol is `http` or `http2`.
  final pulumi.Input<String>? path;
  /// Destination port for the health check request. This port must match the port defined in the `port_mapping` for the listener.
  final pulumi.Input<int>? port;
  /// Protocol for the health check request. Valid values are `http`, `http2`, `tcp` and `grpc`.
  final pulumi.Input<String> protocol;
  /// Amount of time to wait when receiving a response from the health check, in milliseconds.
  final pulumi.Input<int> timeoutMillis;
  /// Number of consecutive failed health checks that must occur before declaring a virtual node unhealthy.
  final pulumi.Input<int> unhealthyThreshold;

  /// Creates a new [VirtualNodeSpecListenerHealthCheck].
  /// [healthyThreshold] Number of consecutive successful health checks that must occur before declaring listener healthy.
  /// [intervalMillis] Time period in milliseconds between each health check execution.
  /// [path] Destination path for the health check request. This is only required if the specified protocol is `http` or `http2`.
  /// [port] Destination port for the health check request. This port must match the port defined in the `port_mapping` for the listener.
  /// [protocol] Protocol for the health check request. Valid values are `http`, `http2`, `tcp` and `grpc`.
  /// [timeoutMillis] Amount of time to wait when receiving a response from the health check, in milliseconds.
  /// [unhealthyThreshold] Number of consecutive failed health checks that must occur before declaring a virtual node unhealthy.
  VirtualNodeSpecListenerHealthCheck({
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

  factory VirtualNodeSpecListenerHealthCheck.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerHealthCheck(
      healthyThreshold: pulumi.Input.fromValue(map['healthyThreshold'] as int),
      intervalMillis: pulumi.Input.fromValue(map['intervalMillis'] as int),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      timeoutMillis: pulumi.Input.fromValue(map['timeoutMillis'] as int),
      unhealthyThreshold: pulumi.Input.fromValue(map['unhealthyThreshold'] as int),
    );
  }
}

