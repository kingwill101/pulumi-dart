// ignore_for_file: unused_element, unnecessary_cast

class OrganizationBucketConfigIndexConfig {
  /// The LogEntry field path to index.
  /// Note that some paths are automatically indexed, and other paths are not eligible for indexing. See [indexing documentation](https://cloud.google.com/logging/docs/analyze/custom-index) for details.
  final String fieldPath;

  /// The type of data in this index. Allowed types include `INDEX_TYPE_UNSPECIFIED`, `INDEX_TYPE_STRING` and `INDEX_TYPE_INTEGER`.
  final String type;

  /// Creates a new [OrganizationBucketConfigIndexConfig].
  /// [fieldPath] The LogEntry field path to index.
  /// [type] The type of data in this index. Allowed types include `INDEX_TYPE_UNSPECIFIED`, `INDEX_TYPE_STRING` and `INDEX_TYPE_INTEGER`.
  OrganizationBucketConfigIndexConfig({
    required this.fieldPath,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fieldPath'] = fieldPath;
    map['type'] = type;
    return map;
  }

  factory OrganizationBucketConfigIndexConfig.fromMap(
      Map<String, dynamic> map) {
    return OrganizationBucketConfigIndexConfig(
      fieldPath: map['fieldPath'] as String,
      type: map['type'] as String,
    );
  }
}
