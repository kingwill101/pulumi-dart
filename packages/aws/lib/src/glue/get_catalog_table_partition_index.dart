// ignore_for_file: unused_element, unnecessary_cast

class GetCatalogTablePartitionIndex {
  /// Name of the partition index.
  final String indexName;
  final String indexStatus;

  /// Keys for the partition index.
  final List<String> keys;

  /// Creates a new [GetCatalogTablePartitionIndex].
  /// [indexName] Name of the partition index.
  /// [indexStatus] Required.
  /// [keys] Keys for the partition index.
  GetCatalogTablePartitionIndex({
    required this.indexName,
    required this.indexStatus,
    required this.keys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexName': indexName,
      'indexStatus': indexStatus,
      'keys': keys,
    };
  }

  factory GetCatalogTablePartitionIndex.fromMap(Map<String, dynamic> map) {
    return GetCatalogTablePartitionIndex(
      indexName: map['indexName'] as String,
      indexStatus: map['indexStatus'] as String,
      keys: (map['keys'] as List).cast<String>(),
    );
  }
}
