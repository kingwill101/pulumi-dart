// ignore_for_file: unused_element, unnecessary_cast


class CatalogTablePartitionIndex {
  /// Name of the partition index.
  final String indexName;
  final String? indexStatus;
  /// Keys for the partition index.
  final List<String> keys;

  /// Creates a new [CatalogTablePartitionIndex].
  /// [indexName] Name of the partition index.
  /// [indexStatus] Optional.
  /// [keys] Keys for the partition index.
  CatalogTablePartitionIndex({
    required this.indexName,
    this.indexStatus,
    required this.keys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexName': indexName,
      'indexStatus': ?indexStatus,
      'keys': keys,
    };
  }

  factory CatalogTablePartitionIndex.fromMap(Map<String, dynamic> map) {
    return CatalogTablePartitionIndex(
      indexName: map['indexName'] as String,
      indexStatus: map['indexStatus'] == null ? null : map['indexStatus'] as String,
      keys: (map['keys'] as List).cast<String>(),
    );
  }
}

