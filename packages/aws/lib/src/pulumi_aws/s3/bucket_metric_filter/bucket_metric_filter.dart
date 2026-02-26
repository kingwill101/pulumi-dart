// ignore_for_file: unused_element, unnecessary_cast

class BucketMetricFilter {
  /// S3 Access Point ARN for filtering (singular).
  final String? accessPoint;

  /// Object prefix for filtering (singular).
  final String? prefix;

  /// Object tags for filtering (up to 10).
  final Map<String, String>? tags;

  BucketMetricFilter({
    this.accessPoint,
    this.prefix,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessPointValue = accessPoint;
    if (accessPointValue != null) {
      map['accessPoint'] = accessPointValue;
    }
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory BucketMetricFilter.fromMap(Map<String, dynamic> map) {
    return BucketMetricFilter(
      accessPoint:
          map['accessPoint'] == null ? null : map['accessPoint'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
