// ignore_for_file: unused_element, unnecessary_cast

class GetRouteSpecHttp2RouteActionWeightedTarget {
  final int port;
  final String virtualNode;
  final int weight;

  GetRouteSpecHttp2RouteActionWeightedTarget({
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

  factory GetRouteSpecHttp2RouteActionWeightedTarget.fromMap(
      Map<String, dynamic> map) {
    return GetRouteSpecHttp2RouteActionWeightedTarget(
      port: map['port'] as int,
      virtualNode: map['virtualNode'] as String,
      weight: map['weight'] as int,
    );
  }
}
