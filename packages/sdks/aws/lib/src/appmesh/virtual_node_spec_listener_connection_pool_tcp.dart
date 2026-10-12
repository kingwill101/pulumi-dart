// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNodeSpecListenerConnectionPoolTcp {
  /// Maximum number of outbound TCP connections Envoy can establish concurrently with all hosts in upstream cluster. Minimum value of `1`.
  final pulumi.Input<int> maxConnections;

  /// Creates a new [VirtualNodeSpecListenerConnectionPoolTcp].
  /// [maxConnections] Maximum number of outbound TCP connections Envoy can establish concurrently with all hosts in upstream cluster. Minimum value of `1`.
  const VirtualNodeSpecListenerConnectionPoolTcp({
    required this.maxConnections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConnections': maxConnections,
    };
  }

  factory VirtualNodeSpecListenerConnectionPoolTcp.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerConnectionPoolTcp(
      maxConnections: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxConnections'])),
    );
  }
}
