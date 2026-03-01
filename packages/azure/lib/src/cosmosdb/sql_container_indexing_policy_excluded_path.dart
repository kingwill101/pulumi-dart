// ignore_for_file: unused_element, unnecessary_cast


class SqlContainerIndexingPolicyExcludedPath {
  /// Path that is excluded from indexing.
  final String path;

  /// Creates a new [SqlContainerIndexingPolicyExcludedPath].
  /// [path] Path that is excluded from indexing.
  SqlContainerIndexingPolicyExcludedPath({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory SqlContainerIndexingPolicyExcludedPath.fromMap(Map<String, dynamic> map) {
    return SqlContainerIndexingPolicyExcludedPath(
      path: map['path'] as String,
    );
  }
}

