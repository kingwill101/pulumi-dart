// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDirectoryBuckets.
class GetDirectoryBucketsResult {
  /// Bucket ARNs.
  final List<String> arns;

  /// Buckets names.
  final List<String> buckets;
  final String id;
  final String region;

  GetDirectoryBucketsResult({
    required this.arns,
    required this.buckets,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arns'] = arns;
    map['buckets'] = buckets;
    map['id'] = id;
    map['region'] = region;
    return map;
  }

  factory GetDirectoryBucketsResult.fromMap(Map<String, dynamic> map) {
    return GetDirectoryBucketsResult(
      arns: (map['arns'] as List).cast<String>(),
      buckets: (map['buckets'] as List).cast<String>(),
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
