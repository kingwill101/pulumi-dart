// ignore_for_file: unused_element, unnecessary_cast


/// Definition of KeySchema
class KeySchemaResponse {
  /// The name of a key attribute.
  final String? attributeName;
  /// The role that this key attribute will assume:  +   ``HASH`` - partition key  +   ``RANGE`` - sort key    The partition key of an item is also known as its *hash attribute*. The term 'hash attribute' derives from DynamoDB's usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values. The sort key of an item is also known as its *range attribute*. The term 'range attribute' derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.
  final String? keyType;

  /// Creates a new [KeySchemaResponse].
  /// [attributeName] The name of a key attribute.
  /// [keyType] The role that this key attribute will assume:  +   ``HASH`` - partition key  +   ``RANGE`` - sort key    The partition key of an item is also known as its *hash attribute*. The term 'hash attribute' derives from DynamoDB's usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values. The sort key of an item is also known as its *range attribute*. The term 'range attribute' derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.
  KeySchemaResponse({
    this.attributeName,
    this.keyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeName': ?attributeName,
      'keyType': ?keyType,
    };
  }

  factory KeySchemaResponse.fromMap(Map<String, dynamic> map) {
    return KeySchemaResponse(
      attributeName: map['attributeName'] == null ? null : map['attributeName'] as String,
      keyType: map['keyType'] == null ? null : map['keyType'] as String,
    );
  }
}

