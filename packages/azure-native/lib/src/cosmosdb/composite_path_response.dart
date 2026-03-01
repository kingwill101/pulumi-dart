// ignore_for_file: unused_element, unnecessary_cast


class CompositePathResponse {
  /// Sort order for composite paths.
  final String? order;
  /// The path for which the indexing behavior applies to. Index paths typically start with root and end with wildcard (/path/*)
  final String? path;

  /// Creates a new [CompositePathResponse].
  /// [order] Sort order for composite paths.
  /// [path] The path for which the indexing behavior applies to. Index paths typically start with root and end with wildcard (/path/*)
  CompositePathResponse({
    this.order,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'order': ?order,
      'path': ?path,
    };
  }

  factory CompositePathResponse.fromMap(Map<String, dynamic> map) {
    return CompositePathResponse(
      order: map['order'] == null ? null : map['order'] as String,
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}

