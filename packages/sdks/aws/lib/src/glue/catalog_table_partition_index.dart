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
  const CatalogTablePartitionIndex({
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
      indexName: pulumi.Input.fromValue(map['indexName'] as String),
      indexStatus: (() { final guardedValue = map['indexStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keys: pulumi.Input.fromValue((map['keys'] as List).cast<String>()),
    );
  }
}
