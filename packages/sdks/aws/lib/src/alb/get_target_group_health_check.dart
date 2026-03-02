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
  GetTargetGroupHealthCheck({
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
      enabled: (map['enabled'] as bool).input(),
      healthyThreshold: (map['healthyThreshold'] as int).input(),
      interval: (map['interval'] as int).input(),
      matcher: (map['matcher'] as String).input(),
      path: (map['path'] as String).input(),
      port: (map['port'] as String).input(),
      protocol: (map['protocol'] as String).input(),
      timeout: (map['timeout'] as int).input(),
      unhealthyThreshold: (map['unhealthyThreshold'] as int).input(),
    );
  }
}

