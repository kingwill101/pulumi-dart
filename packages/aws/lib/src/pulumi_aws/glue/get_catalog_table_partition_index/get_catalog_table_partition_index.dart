// ignore_for_file: unused_element, unnecessary_cast

class GetCatalogTablePartitionIndex {
  /// Name of the partition index.
  final String indexName;
  final String indexStatus;

  /// Keys for the partition index.
  final List<String> keys;

  GetCatalogTablePartitionIndex({
    required this.indexName,
    required this.indexStatus,
    required this.keys,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['indexName'] = indexName;
    map['indexStatus'] = indexStatus;
    map['keys'] = keys;
    return map;
  }

  factory GetCatalogTablePartitionIndex.fromMap(Map<String, dynamic> map) {
    return GetCatalogTablePartitionIndex(
      indexName: map['indexName'] as String,
      indexStatus: map['indexStatus'] as String,
      keys: (map['keys'] as List).cast<String>(),
    );
  }
}
