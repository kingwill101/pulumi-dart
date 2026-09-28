// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouteSpecTcpRouteActionWeightedTarget {
  final pulumi.Input<int> port;
  final pulumi.Input<String> virtualNode;
  final pulumi.Input<int> weight;

  /// Creates a new [GetRouteSpecTcpRouteActionWeightedTarget].
  /// [port] Required.
  /// [virtualNode] Required.
  /// [weight] Required.
  const GetRouteSpecTcpRouteActionWeightedTarget({
    required this.port,
    required this.virtualNode,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'virtualNode': virtualNode,
      'weight': weight,
    };
  }

  factory GetRouteSpecTcpRouteActionWeightedTarget.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecTcpRouteActionWeightedTarget(
      port: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['port'])),
      virtualNode: pulumi.Input.fromValue(map['virtualNode'] as String),
      weight: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['weight'])),
    );
  }
}
