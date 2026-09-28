// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualGatewaySpecListenerConnectionPoolHttp {
  /// Maximum number of outbound TCP connections Envoy can establish concurrently with all hosts in upstream cluster. Minimum value of `1`.
  final pulumi.Input<int> maxConnections;
  /// Number of overflowing requests after `maxConnections` Envoy will queue to upstream cluster. Minimum value of `1`.
  final pulumi.Input<int?>? maxPendingRequests;

  /// Creates a new [VirtualGatewaySpecListenerConnectionPoolHttp].
  /// [maxConnections] Maximum number of outbound TCP connections Envoy can establish concurrently with all hosts in upstream cluster. Minimum value of `1`.
  /// [maxPendingRequests] Number of overflowing requests after `maxConnections` Envoy will queue to upstream cluster. Minimum value of `1`.
  const VirtualGatewaySpecListenerConnectionPoolHttp({
    required this.maxConnections,
    this.maxPendingRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConnections': maxConnections,
      'maxPendingRequests': ?maxPendingRequests,
    };
  }

  factory VirtualGatewaySpecListenerConnectionPoolHttp.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecListenerConnectionPoolHttp(
      maxConnections: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxConnections'])),
      maxPendingRequests: (() { final guardedValue = map['maxPendingRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
