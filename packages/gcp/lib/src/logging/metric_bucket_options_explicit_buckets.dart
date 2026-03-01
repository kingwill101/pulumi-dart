// ignore_for_file: unused_element, unnecessary_cast

class MetricBucketOptionsExplicitBuckets {
  /// The values must be monotonically increasing.
  final List<double> bounds;

  /// Creates a new [MetricBucketOptionsExplicitBuckets].
  /// [bounds] The values must be monotonically increasing.
  MetricBucketOptionsExplicitBuckets({required this.bounds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'bounds': bounds};
  }

  factory MetricBucketOptionsExplicitBuckets.fromMap(Map<String, dynamic> map) {
    return MetricBucketOptionsExplicitBuckets(
      bounds: (map['bounds'] as List).cast<double>(),
    );
  }
}
