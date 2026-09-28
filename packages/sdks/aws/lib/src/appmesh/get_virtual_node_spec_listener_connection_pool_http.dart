// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecListenerConnectionPoolHttp {
  /// Maximum number of outbound TCP connections Envoy can establish concurrently with all hosts in upstream cluster.
  final pulumi.Input<int> maxConnections;
  /// Number of overflowing requests after `maxConnections` Envoy will queue to upstream cluster.
  final pulumi.Input<int> maxPendingRequests;

  /// Creates a new [GetVirtualNodeSpecListenerConnectionPoolHttp].
  /// [maxConnections] Maximum number of outbound TCP connections Envoy can establish concurrently with all hosts in upstream cluster.
  /// [maxPendingRequests] Number of overflowing requests after `maxConnections` Envoy will queue to upstream cluster.
  const GetVirtualNodeSpecListenerConnectionPoolHttp({
    required this.maxConnections,
    required this.maxPendingRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConnections': maxConnections,
      'maxPendingRequests': maxPendingRequests,
    };
  }

  factory GetVirtualNodeSpecListenerConnectionPoolHttp.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerConnectionPoolHttp(
      maxConnections: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxConnections'])),
      maxPendingRequests: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxPendingRequests'])),
    );
  }
}
