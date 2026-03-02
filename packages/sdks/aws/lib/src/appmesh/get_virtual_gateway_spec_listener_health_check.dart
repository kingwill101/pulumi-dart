// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualGatewaySpecListenerHealthCheck {
  final pulumi.Input<int> healthyThreshold;
  final pulumi.Input<int> intervalMillis;
  final pulumi.Input<String> path;
  final pulumi.Input<int> port;
  final pulumi.Input<String> protocol;
  final pulumi.Input<int> timeoutMillis;
  final pulumi.Input<int> unhealthyThreshold;

  /// Creates a new [GetVirtualGatewaySpecListenerHealthCheck].
  /// [healthyThreshold] Required.
  /// [intervalMillis] Required.
  /// [path] Required.
  /// [port] Required.
  /// [protocol] Required.
  /// [timeoutMillis] Required.
  /// [unhealthyThreshold] Required.
  GetVirtualGatewaySpecListenerHealthCheck({
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

  factory GetVirtualGatewaySpecListenerHealthCheck.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecListenerHealthCheck(
      healthyThreshold: (map['healthyThreshold'] as int).input(),
      intervalMillis: (map['intervalMillis'] as int).input(),
      path: (map['path'] as String).input(),
      port: (map['port'] as int).input(),
      protocol: (map['protocol'] as String).input(),
      timeoutMillis: (map['timeoutMillis'] as int).input(),
      unhealthyThreshold: (map['unhealthyThreshold'] as int).input(),
    );
  }
}

