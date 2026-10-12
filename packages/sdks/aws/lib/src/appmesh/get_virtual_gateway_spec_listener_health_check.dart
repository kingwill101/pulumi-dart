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
  const GetVirtualGatewaySpecListenerHealthCheck({
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
      healthyThreshold: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['healthyThreshold'])),
      intervalMillis: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['intervalMillis'])),
      path: pulumi.Input.fromValue(map['path'] as String),
      port: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['port'])),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      timeoutMillis: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['timeoutMillis'])),
      unhealthyThreshold: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['unhealthyThreshold'])),
    );
  }
}
