// ignore_for_file: unused_element, unnecessary_cast


class SpatialSpecResponse {
  /// The path for which the indexing behavior applies to. Index paths typically start with root and end with wildcard (/path/*)
  final String? path;
  /// List of path's spatial type
  final List<String>? types;

  /// Creates a new [SpatialSpecResponse].
  /// [path] The path for which the indexing behavior applies to. Index paths typically start with root and end with wildcard (/path/*)
  /// [types] List of path's spatial type
  SpatialSpecResponse({
    this.path,
    this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'types': ?types,
    };
  }

  factory SpatialSpecResponse.fromMap(Map<String, dynamic> map) {
    return SpatialSpecResponse(
      path: map['path'] == null ? null : map['path'] as String,
      types: map['types'] == null ? null : (map['types'] as List).cast<String>(),
    );
  }
}

