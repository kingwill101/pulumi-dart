// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_schema.dart';
import 'projection.dart';

/// Definition of LocalSecondaryIndex
class LocalSecondaryIndex {
  /// The name of the local secondary index. The name must be unique among all other indexes on this table.
  final pulumi.Input<String>? indexName;
  /// The complete key schema for the local secondary index, consisting of one or more pairs of attribute names and key types:  +   ``HASH`` - partition key  +   ``RANGE`` - sort key    The partition key of an item is also known as its *hash attribute*. The term 'hash attribute' derives from DynamoDB's usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values. The sort key of an item is also known as its *range attribute*. The term 'range attribute' derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.
  final pulumi.Input<List<KeySchema>>? keySchema;
  /// Represents attributes that are copied (projected) from the table into the local secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. Represents attributes that are copied (projected) from the table into an index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.
  final pulumi.Input<Projection>? projection;

  /// Creates a new [LocalSecondaryIndex].
  /// [indexName] The name of the local secondary index. The name must be unique among all other indexes on this table.
  /// [keySchema] The complete key schema for the local secondary index, consisting of one or more pairs of attribute names and key types:  +   ``HASH`` - partition key  +   ``RANGE`` - sort key    The partition key of an item is also known as its *hash attribute*. The term 'hash attribute' derives from DynamoDB's usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values. The sort key of an item is also known as its *range attribute*. The term 'range attribute' derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.
  /// [projection] Represents attributes that are copied (projected) from the table into the local secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. Represents attributes that are copied (projected) from the table into an index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.
  const LocalSecondaryIndex({
    this.indexName,
    this.keySchema,
    this.projection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexName': ?indexName,
      'keySchema': ?pulumi.Input.mapOptionalInputValue<List<KeySchema>, List<Map<String, dynamic>>>(keySchema, (value) => pulumi.Input.encodeList<KeySchema, Map<String, dynamic>>(value, (value) => value.toMap())),
      'projection': ?pulumi.Input.mapOptionalInputValue<Projection, Map<String, dynamic>>(projection, (value) => value.toMap()),
    };
  }

  factory LocalSecondaryIndex.fromMap(Map<String, dynamic> map) {
    return LocalSecondaryIndex(
      indexName: (() { final guardedValue = map['indexName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keySchema: (() { final guardedValue = map['keySchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KeySchema>(guardedValue, (value) => KeySchema.fromMap((value as Map).cast<String, dynamic>()))); })(),
      projection: (() { final guardedValue = map['projection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Projection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

