// ignore_for_file: unused_element, unnecessary_cast


class PartitionIndexPartitionIndex {
  /// Name of the partition index.
  final String? indexName;
  final String? indexStatus;
  /// Keys for the partition index.
  final List<String>? keys;

  /// Creates a new [PartitionIndexPartitionIndex].
  /// [indexName] Name of the partition index.
  /// [indexStatus] Optional.
  /// [keys] Keys for the partition index.
  PartitionIndexPartitionIndex({
    this.indexName,
    this.indexStatus,
    this.keys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexName': ?indexName,
      'indexStatus': ?indexStatus,
      'keys': ?keys,
    };
  }

  factory PartitionIndexPartitionIndex.fromMap(Map<String, dynamic> map) {
    return PartitionIndexPartitionIndex(
      indexName: map['indexName'] == null ? null : map['indexName'] as String,
      indexStatus: map['indexStatus'] == null ? null : map['indexStatus'] as String,
      keys: map['keys'] == null ? null : (map['keys'] as List).cast<String>(),
    );
  }
}

