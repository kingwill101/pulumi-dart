// ignore_for_file: unused_element, unnecessary_cast

class MetricBucketOptionsExplicitBuckets {
  /// The values must be monotonically increasing.
  final List<double> bounds;

  MetricBucketOptionsExplicitBuckets({
    required this.bounds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bounds'] = bounds;
    return map;
  }

  factory MetricBucketOptionsExplicitBuckets.fromMap(Map<String, dynamic> map) {
    return MetricBucketOptionsExplicitBuckets(
      bounds: (map['bounds'] as List).cast<double>(),
    );
  }
}
