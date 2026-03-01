// ignore_for_file: unused_element, unnecessary_cast


class ExcludedPath {
  /// The path for which the indexing behavior applies to. Index paths typically start with root and end with wildcard (/path/*)
  final String? path;

  /// Creates a new [ExcludedPath].
  /// [path] The path for which the indexing behavior applies to. Index paths typically start with root and end with wildcard (/path/*)
  ExcludedPath({
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
    };
  }

  factory ExcludedPath.fromMap(Map<String, dynamic> map) {
    return ExcludedPath(
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}

