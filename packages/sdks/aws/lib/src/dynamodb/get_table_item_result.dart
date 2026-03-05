// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTableItem.
class GetTableItemResult {
  final Map<String, String>? expressionAttributeNames;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// JSON representation of a map of attribute names to [AttributeValue](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_AttributeValue.html) objects, as specified by ProjectionExpression.
  final String item;
  final String key;
  final String? projectionExpression;
  final String region;
  final String tableName;

  /// Creates a new [GetTableItemResult].
  /// [expressionAttributeNames] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [item] JSON representation of a map of attribute names to [AttributeValue](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_AttributeValue.html) objects, as specified by ProjectionExpression.
  /// [key] Required.
  /// [projectionExpression] Optional.
  /// [region] Required.
  /// [tableName] Required.
  GetTableItemResult({
    this.expressionAttributeNames,
    required this.id,
    required this.item,
    required this.key,
    this.projectionExpression,
    required this.region,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressionAttributeNames': ?expressionAttributeNames,
      'id': id,
      'item': item,
      'key': key,
      'projectionExpression': ?projectionExpression,
      'region': region,
      'tableName': tableName,
    };
  }

  factory GetTableItemResult.fromMap(Map<String, dynamic> map) {
    return GetTableItemResult(
      expressionAttributeNames: (() { final guardedValue = map['expressionAttributeNames']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: map['id'] as String,
      item: map['item'] as String,
      key: map['key'] as String,
      projectionExpression: (() { final guardedValue = map['projectionExpression']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: map['region'] as String,
      tableName: map['tableName'] as String,
    );
  }
}

