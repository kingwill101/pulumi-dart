// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTargetGroupHealthCheck {
  final pulumi.Input<bool> enabled;
  final pulumi.Input<int> healthyThreshold;
  final pulumi.Input<int> interval;
  final pulumi.Input<String> matcher;
  final pulumi.Input<String> path;
  final pulumi.Input<String> port;
  final pulumi.Input<String> protocol;
  final pulumi.Input<int> timeout;
  final pulumi.Input<int> unhealthyThreshold;

  /// Creates a new [GetTargetGroupHealthCheck].
  /// [enabled] Required.
  /// [healthyThreshold] Required.
  /// [interval] Required.
  /// [matcher] Required.
  /// [path] Required.
  /// [port] Required.
  /// [protocol] Required.
  /// [timeout] Required.
  /// [unhealthyThreshold] Required.
  const GetTargetGroupHealthCheck({
    required this.enabled,
    required this.healthyThreshold,
    required this.interval,
    required this.matcher,
    required this.path,
    required this.port,
    required this.protocol,
    required this.timeout,
    required this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'healthyThreshold': healthyThreshold,
      'interval': interval,
      'matcher': matcher,
      'path': path,
      'port': port,
      'protocol': protocol,
      'timeout': timeout,
      'unhealthyThreshold': unhealthyThreshold,
    };
  }

  factory GetTargetGroupHealthCheck.fromMap(Map<String, dynamic> map) {
    return GetTargetGroupHealthCheck(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      healthyThreshold: pulumi.Input.fromValue(map['healthyThreshold'] as int),
      interval: pulumi.Input.fromValue(map['interval'] as int),
      matcher: pulumi.Input.fromValue(map['matcher'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      port: pulumi.Input.fromValue(map['port'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      timeout: pulumi.Input.fromValue(map['timeout'] as int),
      unhealthyThreshold: pulumi.Input.fromValue(map['unhealthyThreshold'] as int),
    );
  }
}
