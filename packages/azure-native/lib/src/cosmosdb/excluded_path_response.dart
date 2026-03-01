// ignore_for_file: unused_element, unnecessary_cast


class ExcludedPathResponse {
  /// The path for which the indexing behavior applies to. Index paths typically start with root and end with wildcard (/path/*)
  final String? path;

  /// Creates a new [ExcludedPathResponse].
  /// [path] The path for which the indexing behavior applies to. Index paths typically start with root and end with wildcard (/path/*)
  ExcludedPathResponse({
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
    };
  }

  factory ExcludedPathResponse.fromMap(Map<String, dynamic> map) {
    return ExcludedPathResponse(
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}

