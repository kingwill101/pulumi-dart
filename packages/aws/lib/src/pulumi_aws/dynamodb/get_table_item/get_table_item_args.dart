// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTableItem.
class GetTableItemArgs {
  final pulumi.Input<Map<String, String>>? expressionAttributeNames;

  /// A map of attribute names to AttributeValue objects, representing the primary key of the item to retrieve.
  /// For the primary key, you must provide all of the attributes. For example, with a simple primary key, you only need to provide a value for the partition key. For a composite primary key, you must provide values for both the partition key and the sort key.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> key;

  /// A string that identifies one or more attributes to retrieve from the table. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the expression must be separated by commas.
  /// If no attribute names are specified, then all attributes are returned. If any of the requested attributes are not found, they do not appear in the result.
  final pulumi.Input<String>? projectionExpression;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The name or ARN of the table containing the requested item.
  final pulumi.Input<String> tableName;

  GetTableItemArgs({
    this.expressionAttributeNames,
    required this.key,
    this.projectionExpression,
    this.region,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final expressionAttributeNamesValue = expressionAttributeNames;
    if (expressionAttributeNamesValue != null) {
      map['expressionAttributeNames'] = expressionAttributeNamesValue;
    }
    map['key'] = key;
    final projectionExpressionValue = projectionExpression;
    if (projectionExpressionValue != null) {
      map['projectionExpression'] = projectionExpressionValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['tableName'] = tableName;
    return map;
  }

  factory GetTableItemArgs.fromMap(Map<String, dynamic> map) {
    return GetTableItemArgs(
      expressionAttributeNames:
          pulumi.Input.asOptionalInput<Map<String, String>>(
              map['expressionAttributeNames']),
      key: pulumi.Input.asInput<String>(map['key']),
      projectionExpression:
          pulumi.Input.asOptionalInput<String>(map['projectionExpression']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tableName: pulumi.Input.asInput<String>(map['tableName']),
    );
  }
}
