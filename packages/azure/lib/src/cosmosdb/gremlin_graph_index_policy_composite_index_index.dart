// ignore_for_file: unused_element, unnecessary_cast


class GremlinGraphIndexPolicyCompositeIndexIndex {
  /// Order of the index. Possible values are `Ascending` or `Descending`.
  final String order;
  /// Path for which the indexing behaviour applies to.
  final String path;

  /// Creates a new [GremlinGraphIndexPolicyCompositeIndexIndex].
  /// [order] Order of the index. Possible values are `Ascending` or `Descending`.
  /// [path] Path for which the indexing behaviour applies to.
  GremlinGraphIndexPolicyCompositeIndexIndex({
    required this.order,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'order': order,
      'path': path,
    };
  }

  factory GremlinGraphIndexPolicyCompositeIndexIndex.fromMap(Map<String, dynamic> map) {
    return GremlinGraphIndexPolicyCompositeIndexIndex(
      order: map['order'] as String,
      path: map['path'] as String,
    );
  }
}

