// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecListenerHealthCheck {
  /// Number of consecutive successful health checks that must occur before declaring listener healthy.
  final pulumi.Input<int> healthyThreshold;
  /// Time period in milliseconds between each health check execution.
  final pulumi.Input<int> intervalMillis;
  /// File path to write access logs to.
  final pulumi.Input<String> path;
  /// Port used for the port mapping.
  final pulumi.Input<int> port;
  /// Protocol used for the port mapping.
  final pulumi.Input<String> protocol;
  /// Amount of time to wait when receiving a response from the health check, in milliseconds.
  final pulumi.Input<int> timeoutMillis;
  /// Number of consecutive failed health checks that must occur before declaring a virtual node unhealthy.
  final pulumi.Input<int> unhealthyThreshold;

  /// Creates a new [GetVirtualNodeSpecListenerHealthCheck].
  /// [healthyThreshold] Number of consecutive successful health checks that must occur before declaring listener healthy.
  /// [intervalMillis] Time period in milliseconds between each health check execution.
  /// [path] File path to write access logs to.
  /// [port] Port used for the port mapping.
  /// [protocol] Protocol used for the port mapping.
  /// [timeoutMillis] Amount of time to wait when receiving a response from the health check, in milliseconds.
  /// [unhealthyThreshold] Number of consecutive failed health checks that must occur before declaring a virtual node unhealthy.
  const GetVirtualNodeSpecListenerHealthCheck({
    required this.healthyThreshold,
    required this.intervalMillis,
    required this.path,
    required this.port,
    required this.protocol,
    required this.timeoutMillis,
    required this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthyThreshold': healthyThreshold,
      'intervalMillis': intervalMillis,
      'path': path,
      'port': port,
      'protocol': protocol,
      'timeoutMillis': timeoutMillis,
      'unhealthyThreshold': unhealthyThreshold,
    };
  }

  factory GetVirtualNodeSpecListenerHealthCheck.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerHealthCheck(
      healthyThreshold: pulumi.Input.fromValue((map['healthyThreshold'] as num).toInt()),
      intervalMillis: pulumi.Input.fromValue((map['intervalMillis'] as num).toInt()),
      path: pulumi.Input.fromValue(map['path'] as String),
      port: pulumi.Input.fromValue((map['port'] as num).toInt()),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      timeoutMillis: pulumi.Input.fromValue((map['timeoutMillis'] as num).toInt()),
      unhealthyThreshold: pulumi.Input.fromValue((map['unhealthyThreshold'] as num).toInt()),
    );
  }
}
