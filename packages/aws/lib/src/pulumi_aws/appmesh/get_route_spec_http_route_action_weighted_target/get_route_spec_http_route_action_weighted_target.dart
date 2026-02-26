// ignore_for_file: unused_element, unnecessary_cast

class GetRouteSpecHttpRouteActionWeightedTarget {
  final int port;
  final String virtualNode;
  final int weight;

  GetRouteSpecHttpRouteActionWeightedTarget({
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

  factory GetRouteSpecHttpRouteActionWeightedTarget.fromMap(
      Map<String, dynamic> map) {
    return GetRouteSpecHttpRouteActionWeightedTarget(
      port: map['port'] as int,
      virtualNode: map['virtualNode'] as String,
      weight: map['weight'] as int,
    );
  }
}
