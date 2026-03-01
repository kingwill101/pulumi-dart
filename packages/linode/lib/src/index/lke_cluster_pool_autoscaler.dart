// ignore_for_file: unused_element, unnecessary_cast


class LkeClusterPoolAutoscaler {
  /// The maximum number of nodes to autoscale to.
  final int max;
  /// The minimum number of nodes to autoscale to.
  final int min;

  /// Creates a new [LkeClusterPoolAutoscaler].
  /// [max] The maximum number of nodes to autoscale to.
  /// [min] The minimum number of nodes to autoscale to.
  LkeClusterPoolAutoscaler({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory LkeClusterPoolAutoscaler.fromMap(Map<String, dynamic> map) {
    return LkeClusterPoolAutoscaler(
      max: map['max'] as int,
      min: map['min'] as int,
    );
  }
}

