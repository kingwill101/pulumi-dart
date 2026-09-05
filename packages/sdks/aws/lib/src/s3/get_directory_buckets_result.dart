// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDirectoryBuckets.
class GetDirectoryBucketsResult {
  /// Bucket ARNs.
  final List<String>? arns;
  /// Buckets names.
  final List<String>? buckets;
  final String? id;
  final String? region;

  /// Creates a new [GetDirectoryBucketsResult].
  /// [arns] Bucket ARNs.
  /// [buckets] Buckets names.
  /// [id] Optional.
  /// [region] Optional.
  const GetDirectoryBucketsResult({
    this.arns,
    this.buckets,
    this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': ?arns,
      'buckets': ?buckets,
      'id': ?id,
      'region': ?region,
    };
  }

  factory GetDirectoryBucketsResult.fromMap(Map<String, dynamic> map) {
    return GetDirectoryBucketsResult(
      arns: (() { final guardedValue = map['arns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      buckets: (() { final guardedValue = map['buckets']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
