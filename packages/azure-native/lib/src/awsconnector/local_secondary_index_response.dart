// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_schema_response.dart';
import 'projection_response.dart';

/// Definition of LocalSecondaryIndex
class LocalSecondaryIndexResponse {
  /// The name of the local secondary index. The name must be unique among all other indexes on this table.
  final String? indexName;
  /// The complete key schema for the local secondary index, consisting of one or more pairs of attribute names and key types:  +   ``HASH`` - partition key  +   ``RANGE`` - sort key    The partition key of an item is also known as its *hash attribute*. The term 'hash attribute' derives from DynamoDB's usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values. The sort key of an item is also known as its *range attribute*. The term 'range attribute' derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.
  final List<KeySchemaResponse>? keySchema;
  /// Represents attributes that are copied (projected) from the table into the local secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. Represents attributes that are copied (projected) from the table into an index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.
  final ProjectionResponse? projection;

  /// Creates a new [LocalSecondaryIndexResponse].
  /// [indexName] The name of the local secondary index. The name must be unique among all other indexes on this table.
  /// [keySchema] The complete key schema for the local secondary index, consisting of one or more pairs of attribute names and key types:  +   ``HASH`` - partition key  +   ``RANGE`` - sort key    The partition key of an item is also known as its *hash attribute*. The term 'hash attribute' derives from DynamoDB's usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values. The sort key of an item is also known as its *range attribute*. The term 'range attribute' derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.
  /// [projection] Represents attributes that are copied (projected) from the table into the local secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. Represents attributes that are copied (projected) from the table into an index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.
  LocalSecondaryIndexResponse({
    this.indexName,
    this.keySchema,
    this.projection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexName': ?indexName,
      'keySchema': ?keySchema == null ? null : pulumi.Input.encodeList<KeySchemaResponse, Map<String, dynamic>>(keySchema!, (value) => value.toMap()),
      'projection': ?projection == null ? null : projection!.toMap(),
    };
  }

  factory LocalSecondaryIndexResponse.fromMap(Map<String, dynamic> map) {
    return LocalSecondaryIndexResponse(
      indexName: map['indexName'] == null ? null : map['indexName'] as String,
      keySchema: map['keySchema'] == null ? null : pulumi.Input.decodeList<KeySchemaResponse>(map['keySchema'], (value) => KeySchemaResponse.fromMap((value as Map).cast<String, dynamic>())),
      projection: map['projection'] == null ? null : ProjectionResponse.fromMap((map['projection'] as Map).cast<String, dynamic>()),
    );
  }
}

