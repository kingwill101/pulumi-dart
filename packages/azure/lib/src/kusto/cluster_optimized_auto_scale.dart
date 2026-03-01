// ignore_for_file: unused_element, unnecessary_cast


class ClusterOptimizedAutoScale {
  /// The maximum number of allowed instances. Possible values range between `0` and `1000`.
  final int maximumInstances;
  /// The minimum number of allowed instances. Possible values range between `0` and `1000`.
  final int minimumInstances;

  /// Creates a new [ClusterOptimizedAutoScale].
  /// [maximumInstances] The maximum number of allowed instances. Possible values range between `0` and `1000`.
  /// [minimumInstances] The minimum number of allowed instances. Possible values range between `0` and `1000`.
  ClusterOptimizedAutoScale({
    required this.maximumInstances,
    required this.minimumInstances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximumInstances': maximumInstances,
      'minimumInstances': minimumInstances,
    };
  }

  factory ClusterOptimizedAutoScale.fromMap(Map<String, dynamic> map) {
    return ClusterOptimizedAutoScale(
      maximumInstances: map['maximumInstances'] as int,
      minimumInstances: map['minimumInstances'] as int,
    );
  }
}

