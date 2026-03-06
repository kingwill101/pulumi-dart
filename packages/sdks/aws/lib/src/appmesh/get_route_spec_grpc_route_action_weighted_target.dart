// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouteSpecGrpcRouteActionWeightedTarget {
  final pulumi.Input<int> port;
  final pulumi.Input<String> virtualNode;
  final pulumi.Input<int> weight;

  /// Creates a new [GetRouteSpecGrpcRouteActionWeightedTarget].
  /// [port] Required.
  /// [virtualNode] Required.
  /// [weight] Required.
  const GetRouteSpecGrpcRouteActionWeightedTarget({
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

  factory GetRouteSpecGrpcRouteActionWeightedTarget.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecGrpcRouteActionWeightedTarget(
      port: pulumi.Input.fromValue(map['port'] as int),
      virtualNode: pulumi.Input.fromValue(map['virtualNode'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}

