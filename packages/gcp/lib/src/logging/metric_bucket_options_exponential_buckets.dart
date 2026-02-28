// ignore_for_file: unused_element, unnecessary_cast

class MetricBucketOptionsExponentialBuckets {
  /// Must be greater than 1.
  final double growthFactor;

  /// Must be greater than 0.
  final int numFiniteBuckets;

  /// Must be greater than 0.
  final double scale;

  /// Creates a new [MetricBucketOptionsExponentialBuckets].
  /// [growthFactor] Must be greater than 1.
  /// [numFiniteBuckets] Must be greater than 0.
  /// [scale] Must be greater than 0.
  MetricBucketOptionsExponentialBuckets({
    required this.growthFactor,
    required this.numFiniteBuckets,
    required this.scale,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['growthFactor'] = growthFactor;
    map['numFiniteBuckets'] = numFiniteBuckets;
    map['scale'] = scale;
    return map;
  }

  factory MetricBucketOptionsExponentialBuckets.fromMap(
      Map<String, dynamic> map) {
    return MetricBucketOptionsExponentialBuckets(
      growthFactor: map['growthFactor'] as double,
      numFiniteBuckets: map['numFiniteBuckets'] as int,
      scale: map['scale'] as double,
    );
  }
}
