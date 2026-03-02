// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CatalogTablePartitionIndex {
  /// Name of the partition index.
  final pulumi.Input<String> indexName;
  final pulumi.Input<String>? indexStatus;
  /// Keys for the partition index.
  final pulumi.Input<List<String>> keys;

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
      indexName: (map['indexName'] as String).input(),
      indexStatus: map['indexStatus'] == null ? null : (map['indexStatus'] as String).input(),
      keys: ((map['keys'] as List).cast<String>()).input(),
    );
  }
}

