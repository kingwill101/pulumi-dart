// ignore_for_file: unused_element, unnecessary_cast

class GetRouteSpecTcpRouteActionWeightedTarget {
  final int port;
  final String virtualNode;
  final int weight;

  /// Creates a new [GetRouteSpecTcpRouteActionWeightedTarget].
  /// [port] Required.
  /// [virtualNode] Required.
  /// [weight] Required.
  GetRouteSpecTcpRouteActionWeightedTarget({
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

  factory GetRouteSpecTcpRouteActionWeightedTarget.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRouteSpecTcpRouteActionWeightedTarget(
      port: map['port'] as int,
      virtualNode: map['virtualNode'] as String,
      weight: map['weight'] as int,
    );
  }
}
