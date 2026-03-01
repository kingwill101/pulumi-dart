// ignore_for_file: unused_element, unnecessary_cast


class BucketMetricFilter {
  /// S3 Access Point ARN for filtering (singular).
  final String? accessPoint;
  /// Object prefix for filtering (singular).
  final String? prefix;
  /// Object tags for filtering (up to 10).
  final Map<String, String>? tags;

  /// Creates a new [BucketMetricFilter].
  /// [accessPoint] S3 Access Point ARN for filtering (singular).
  /// [prefix] Object prefix for filtering (singular).
  /// [tags] Object tags for filtering (up to 10).
  BucketMetricFilter({
    this.accessPoint,
    this.prefix,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPoint': ?accessPoint,
      'prefix': ?prefix,
      'tags': ?tags,
    };
  }

  factory BucketMetricFilter.fromMap(Map<String, dynamic> map) {
    return BucketMetricFilter(
      accessPoint: map['accessPoint'] == null ? null : map['accessPoint'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

