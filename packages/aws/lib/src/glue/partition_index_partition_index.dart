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
    final map = <String, dynamic>{};
    final indexNameValue = indexName;
    if (indexNameValue != null) {
      map['indexName'] = indexNameValue;
    }
    final indexStatusValue = indexStatus;
    if (indexStatusValue != null) {
      map['indexStatus'] = indexStatusValue;
    }
    final keysValue = keys;
    if (keysValue != null) {
      map['keys'] = keysValue;
    }
    return map;
  }

  factory PartitionIndexPartitionIndex.fromMap(Map<String, dynamic> map) {
    return PartitionIndexPartitionIndex(
      indexName: map['indexName'] == null ? null : map['indexName'] as String,
      indexStatus:
          map['indexStatus'] == null ? null : map['indexStatus'] as String,
      keys: map['keys'] == null ? null : (map['keys'] as List).cast<String>(),
    );
  }
}
