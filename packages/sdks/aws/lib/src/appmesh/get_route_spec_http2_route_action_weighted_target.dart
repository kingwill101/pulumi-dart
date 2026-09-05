// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouteSpecHttp2RouteActionWeightedTarget {
  final pulumi.Input<int> port;
  final pulumi.Input<String> virtualNode;
  final pulumi.Input<int> weight;

  /// Creates a new [GetRouteSpecHttp2RouteActionWeightedTarget].
  /// [port] Required.
  /// [virtualNode] Required.
  /// [weight] Required.
  const GetRouteSpecHttp2RouteActionWeightedTarget({
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

  factory GetRouteSpecHttp2RouteActionWeightedTarget.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttp2RouteActionWeightedTarget(
      port: pulumi.Input.fromValue((map['port'] as num).toInt()),
      virtualNode: pulumi.Input.fromValue(map['virtualNode'] as String),
      weight: pulumi.Input.fromValue((map['weight'] as num).toInt()),
    );
  }
}
