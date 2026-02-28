// ignore_for_file: unused_element, unnecessary_cast


class ProjectBucketConfigIndexConfig {
  /// The LogEntry field path to index.
  /// Note that some paths are automatically indexed, and other paths are not eligible for indexing. See [indexing documentation](https://cloud.google.com/logging/docs/analyze/custom-index) for details.
  final String fieldPath;
  /// The type of data in this index. Allowed types include `INDEX_TYPE_UNSPECIFIED`, `INDEX_TYPE_STRING` and `INDEX_TYPE_INTEGER`.
  final String type;

  /// Creates a new [ProjectBucketConfigIndexConfig].
  /// [fieldPath] The LogEntry field path to index.
  /// [type] The type of data in this index. Allowed types include `INDEX_TYPE_UNSPECIFIED`, `INDEX_TYPE_STRING` and `INDEX_TYPE_INTEGER`.
  ProjectBucketConfigIndexConfig({
    required this.fieldPath,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldPath': fieldPath,
      'type': type,
    };
  }

  factory ProjectBucketConfigIndexConfig.fromMap(Map<String, dynamic> map) {
    return ProjectBucketConfigIndexConfig(
      fieldPath: map['fieldPath'] as String,
      type: map['type'] as String,
    );
  }
}

