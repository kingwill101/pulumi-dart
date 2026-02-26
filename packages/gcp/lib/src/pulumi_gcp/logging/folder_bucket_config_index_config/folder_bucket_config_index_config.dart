// ignore_for_file: unused_element, unnecessary_cast

class FolderBucketConfigIndexConfig {
  /// The LogEntry field path to index.
  /// Note that some paths are automatically indexed, and other paths are not eligible for indexing. See [indexing documentation](https://cloud.google.com/logging/docs/analyze/custom-index) for details.
  final String fieldPath;

  /// The type of data in this index. Allowed types include `INDEX_TYPE_UNSPECIFIED`, `INDEX_TYPE_STRING` and `INDEX_TYPE_INTEGER`.
  final String type;

  FolderBucketConfigIndexConfig({
    required this.fieldPath,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fieldPath'] = fieldPath;
    map['type'] = type;
    return map;
  }

  factory FolderBucketConfigIndexConfig.fromMap(Map<String, dynamic> map) {
    return FolderBucketConfigIndexConfig(
      fieldPath: map['fieldPath'] as String,
      type: map['type'] as String,
    );
  }
}
