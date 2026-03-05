// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PartitionIndexPartitionIndex {
  /// Name of the partition index.
  final pulumi.Input<String>? indexName;
  final pulumi.Input<String>? indexStatus;
  /// Keys for the partition index.
  final pulumi.Input<List<String>>? keys;

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
      indexName: (() { final guardedValue = map['indexName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      indexStatus: (() { final guardedValue = map['indexStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keys: (() { final guardedValue = map['keys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

