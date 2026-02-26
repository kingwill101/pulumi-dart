// ignore_for_file: unused_element, unnecessary_cast

/// Specifies a set of buckets with arbitrary widths.There are size(bounds) + 1 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i < N-1): boundsi Lower bound (1 <= i < N); boundsi - 1The bounds field must contain at least one element. If bounds has only one element, then there are no finite buckets, and that single element is the common boundary of the overflow and underflow buckets.
class ExplicitResponse {
  /// The values must be monotonically increasing.
  final List<double> bounds;

  ExplicitResponse({
    required this.bounds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bounds'] = bounds;
    return map;
  }

  factory ExplicitResponse.fromMap(Map<String, dynamic> map) {
    return ExplicitResponse(
      bounds: (map['bounds'] as List).cast<double>(),
    );
  }
}
