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
  GetRouteSpecGrpcRouteActionWeightedTarget({
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
      port: (map['port'] as int).input(),
      virtualNode: (map['virtualNode'] as String).input(),
      weight: (map['weight'] as int).input(),
    );
  }
}

