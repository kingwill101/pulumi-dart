// ignore_for_file: unused_element, unnecessary_cast

/// Specifies a linear sequence of buckets that all have the same width (except overflow and underflow). Each bucket represents a constant absolute uncertainty on the specific value in the bucket.There are num_finite_buckets + 2 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i < N-1): offset + (width * i).Lower bound (1 <= i < N): offset + (width * (i - 1)).
class LinearResponse {
  /// Must be greater than 0.
  final int numFiniteBuckets;

  /// Lower bound of the first bucket.
  final double offset;

  /// Must be greater than 0.
  final double width;

  /// Creates a new [LinearResponse].
  /// [numFiniteBuckets] Must be greater than 0.
  /// [offset] Lower bound of the first bucket.
  /// [width] Must be greater than 0.
  LinearResponse({
    required this.numFiniteBuckets,
    required this.offset,
    required this.width,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numFiniteBuckets': numFiniteBuckets,
      'offset': offset,
      'width': width,
    };
  }

  factory LinearResponse.fromMap(Map<String, dynamic> map) {
    return LinearResponse(
      numFiniteBuckets: map['numFiniteBuckets'] as int,
      offset: map['offset'] as double,
      width: map['width'] as double,
    );
  }
}
