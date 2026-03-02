// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouteSpecHttp2RouteActionWeightedTarget {
  /// The targeted port of the weighted object.
  final pulumi.Input<int>? port;
  /// Virtual node to associate with the weighted target. Must be between 1 and 255 characters in length.
  final pulumi.Input<String> virtualNode;
  /// Relative weight of the weighted target. An integer between 0 and 100.
  final pulumi.Input<int> weight;

  /// Creates a new [RouteSpecHttp2RouteActionWeightedTarget].
  /// [port] The targeted port of the weighted object.
  /// [virtualNode] Virtual node to associate with the weighted target. Must be between 1 and 255 characters in length.
  /// [weight] Relative weight of the weighted target. An integer between 0 and 100.
  RouteSpecHttp2RouteActionWeightedTarget({
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

  factory RouteSpecHttp2RouteActionWeightedTarget.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttp2RouteActionWeightedTarget(
      port: map['port'] == null ? null : ((map['port'] as int).input()).input(),
      virtualNode: (map['virtualNode'] as String).input(),
      weight: (map['weight'] as int).input(),
    );
  }
}

