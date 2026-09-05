// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTableItem.
class GetTableItemResult {
  final Map<String, String>? expressionAttributeNames;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// JSON representation of a map of attribute names to [AttributeValue](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_AttributeValue.html) objects, as specified by ProjectionExpression.
  final String? item;
  final String? key;
  final String? projectionExpression;
  final String? region;
  final String? tableName;

  /// Creates a new [GetTableItemResult].
  /// [expressionAttributeNames] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [item] JSON representation of a map of attribute names to [AttributeValue](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_AttributeValue.html) objects, as specified by ProjectionExpression.
  /// [key] Optional.
  /// [projectionExpression] Optional.
  /// [region] Optional.
  /// [tableName] Optional.
  const GetTableItemResult({
    this.expressionAttributeNames,
    this.id,
    this.item,
    this.key,
    this.projectionExpression,
    this.region,
    this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressionAttributeNames': ?expressionAttributeNames,
      'id': ?id,
      'item': ?item,
      'key': ?key,
      'projectionExpression': ?projectionExpression,
      'region': ?region,
      'tableName': ?tableName,
    };
  }

  factory GetTableItemResult.fromMap(Map<String, dynamic> map) {
    return GetTableItemResult(
      expressionAttributeNames: (() { final guardedValue = map['expressionAttributeNames']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      item: (() { final guardedValue = map['item']; if (guardedValue == null) return null; return guardedValue as String; })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return guardedValue as String; })(),
      projectionExpression: (() { final guardedValue = map['projectionExpression']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
