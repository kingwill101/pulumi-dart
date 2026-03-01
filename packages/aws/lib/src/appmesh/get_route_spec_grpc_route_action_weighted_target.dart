// ignore_for_file: unused_element, unnecessary_cast


class GetRouteSpecGrpcRouteActionWeightedTarget {
  final int port;
  final String virtualNode;
  final int weight;

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
      port: map['port'] as int,
      virtualNode: map['virtualNode'] as String,
      weight: map['weight'] as int,
    );
  }
}

