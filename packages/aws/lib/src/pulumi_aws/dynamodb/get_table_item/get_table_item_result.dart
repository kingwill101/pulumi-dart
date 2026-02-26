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
    final map = <String, dynamic>{};
    final expressionAttributeNamesValue = expressionAttributeNames;
    if (expressionAttributeNamesValue != null) {
      map['expressionAttributeNames'] = expressionAttributeNamesValue;
    }
    map['id'] = id;
    map['item'] = item;
    map['key'] = key;
    final projectionExpressionValue = projectionExpression;
    if (projectionExpressionValue != null) {
      map['projectionExpression'] = projectionExpressionValue;
    }
    map['region'] = region;
    map['tableName'] = tableName;
    return map;
  }

  factory GetTableItemResult.fromMap(Map<String, dynamic> map) {
    return GetTableItemResult(
      expressionAttributeNames: map['expressionAttributeNames'] == null
          ? null
          : (map['expressionAttributeNames'] as Map).cast<String, String>(),
      id: map['id'] as String,
      item: map['item'] as String,
      key: map['key'] as String,
      projectionExpression: map['projectionExpression'] == null
          ? null
          : map['projectionExpression'] as String,
      region: map['region'] as String,
      tableName: map['tableName'] as String,
    );
  }
}
