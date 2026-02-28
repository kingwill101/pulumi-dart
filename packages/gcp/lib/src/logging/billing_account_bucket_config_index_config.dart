// ignore_for_file: unused_element, unnecessary_cast

class BillingAccountBucketConfigIndexConfig {
  /// The LogEntry field path to index.
  /// Note that some paths are automatically indexed, and other paths are not eligible for indexing. See [indexing documentation](https://cloud.google.com/logging/docs/analyze/custom-index) for details.
  final String fieldPath;

  /// The type of data in this index. Allowed types include `INDEX_TYPE_UNSPECIFIED`, `INDEX_TYPE_STRING` and `INDEX_TYPE_INTEGER`.
  final String type;

  /// Creates a new [BillingAccountBucketConfigIndexConfig].
  /// [fieldPath] The LogEntry field path to index.
  /// [type] The type of data in this index. Allowed types include `INDEX_TYPE_UNSPECIFIED`, `INDEX_TYPE_STRING` and `INDEX_TYPE_INTEGER`.
  BillingAccountBucketConfigIndexConfig({
    required this.fieldPath,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fieldPath'] = fieldPath;
    map['type'] = type;
    return map;
  }

  factory BillingAccountBucketConfigIndexConfig.fromMap(
      Map<String, dynamic> map) {
    return BillingAccountBucketConfigIndexConfig(
      fieldPath: map['fieldPath'] as String,
      type: map['type'] as String,
    );
  }
}
