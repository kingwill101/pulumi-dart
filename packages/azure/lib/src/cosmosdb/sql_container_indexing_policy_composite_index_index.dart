// ignore_for_file: unused_element, unnecessary_cast


class SqlContainerIndexingPolicyCompositeIndexIndex {
  /// Order of the index. Possible values are `Ascending` or `Descending`.
  final String order;
  /// Path for which the indexing behaviour applies to.
  final String path;

  /// Creates a new [SqlContainerIndexingPolicyCompositeIndexIndex].
  /// [order] Order of the index. Possible values are `Ascending` or `Descending`.
  /// [path] Path for which the indexing behaviour applies to.
  SqlContainerIndexingPolicyCompositeIndexIndex({
    required this.order,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'order': order,
      'path': path,
    };
  }

  factory SqlContainerIndexingPolicyCompositeIndexIndex.fromMap(Map<String, dynamic> map) {
    return SqlContainerIndexingPolicyCompositeIndexIndex(
      order: map['order'] as String,
      path: map['path'] as String,
    );
  }
}

