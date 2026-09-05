// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouteSpecHttp2RouteActionWeightedTarget {
  /// Port number to match from the request.
  final pulumi.Input<int?>? port;
  /// Virtual node to associate with the weighted target. Must be between 1 and 255 characters in length.
  final pulumi.Input<String> virtualNode;
  /// Relative weight of the weighted target. An integer between 0 and 100.
  final pulumi.Input<int> weight;

  /// Creates a new [RouteSpecHttp2RouteActionWeightedTarget].
  /// [port] Port number to match from the request.
  /// [virtualNode] Virtual node to associate with the weighted target. Must be between 1 and 255 characters in length.
  /// [weight] Relative weight of the weighted target. An integer between 0 and 100.
  const RouteSpecHttp2RouteActionWeightedTarget({
    this.port,
    required this.virtualNode,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'virtualNode': virtualNode,
      'weight': weight,
    };
  }

  factory RouteSpecHttp2RouteActionWeightedTarget.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttp2RouteActionWeightedTarget(
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      virtualNode: pulumi.Input.fromValue(map['virtualNode'] as String),
      weight: pulumi.Input.fromValue((map['weight'] as num).toInt()),
    );
  }
}
