// ignore_for_file: unused_element, unnecessary_cast


class GetRouteSpecHttpRouteActionWeightedTarget {
  final int port;
  final String virtualNode;
  final int weight;

  /// Creates a new [GetRouteSpecHttpRouteActionWeightedTarget].
  /// [port] Required.
  /// [virtualNode] Required.
  /// [weight] Required.
  GetRouteSpecHttpRouteActionWeightedTarget({
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

  factory GetRouteSpecHttpRouteActionWeightedTarget.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttpRouteActionWeightedTarget(
      port: map['port'] as int,
      virtualNode: map['virtualNode'] as String,
      weight: map['weight'] as int,
    );
  }
}

