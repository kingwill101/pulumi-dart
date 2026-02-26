// ignore_for_file: unused_element, unnecessary_cast

class GetRouteSpecGrpcRouteActionWeightedTarget {
  final int port;
  final String virtualNode;
  final int weight;

  GetRouteSpecGrpcRouteActionWeightedTarget({
    required this.port,
    required this.virtualNode,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['port'] = port;
    map['virtualNode'] = virtualNode;
    map['weight'] = weight;
    return map;
  }

  factory GetRouteSpecGrpcRouteActionWeightedTarget.fromMap(
      Map<String, dynamic> map) {
    return GetRouteSpecGrpcRouteActionWeightedTarget(
      port: map['port'] as int,
      virtualNode: map['virtualNode'] as String,
      weight: map['weight'] as int,
    );
  }
}
