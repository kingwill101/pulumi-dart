// ignore_for_file: unused_element, unnecessary_cast

class RouteSpecGrpcRouteActionWeightedTarget {
  /// The targeted port of the weighted object.
  final int? port;

  /// Virtual node to associate with the weighted target. Must be between 1 and 255 characters in length.
  final String virtualNode;

  /// Relative weight of the weighted target. An integer between 0 and 100.
  final int weight;

  /// Creates a new [RouteSpecGrpcRouteActionWeightedTarget].
  /// [port] The targeted port of the weighted object.
  /// [virtualNode] Virtual node to associate with the weighted target. Must be between 1 and 255 characters in length.
  /// [weight] Relative weight of the weighted target. An integer between 0 and 100.
  RouteSpecGrpcRouteActionWeightedTarget({
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

  factory RouteSpecGrpcRouteActionWeightedTarget.fromMap(
    Map<String, dynamic> map,
  ) {
    return RouteSpecGrpcRouteActionWeightedTarget(
      port: map['port'] == null ? null : map['port'] as int,
      virtualNode: map['virtualNode'] as String,
      weight: map['weight'] as int,
    );
  }
}
