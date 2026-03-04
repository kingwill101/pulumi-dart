// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCatalogTablePartitionIndex {
  /// Name of the partition index.
  final pulumi.Input<String> indexName;
  final pulumi.Input<String> indexStatus;

  /// Keys for the partition index.
  final pulumi.Input<List<String>> keys;

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
      indexName: pulumi.Input.fromValue(map['indexName'] as String),
      indexStatus: pulumi.Input.fromValue(map['indexStatus'] as String),
      keys: pulumi.Input.fromValue((map['keys'] as List).cast<String>()),
    );
  }
}
