// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dynamodb_table_item_table_item_args_doc}
/// The set of arguments for TableItem.
/// {@endtemplate}
/// {@macro pulumi_dynamodb_table_item_table_item_args_doc}
class TableItemArgs {
  /// Hash key to use for lookups and identification of the item
  final pulumi.Input<String> hashKey;
  /// JSON representation of a map of attribute name/value pairs, one for each attribute. Only the primary key attributes are required; you can optionally provide other attribute name-value pairs for the item.
  final pulumi.Input<String> item;
  /// Range key to use for lookups and identification of the item. Required if there is range key defined in the table.
  final pulumi.Input<String>? rangeKey;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name or ARN of the table to contain the item.
  ///
  /// &gt; **Note:** Names included in `item` are represented internally with everything but letters removed. There is the possibility of collisions if two names, once filtered, are the same. For example, the names `your-name-here` and `yournamehere` will overlap and cause an error.
  final pulumi.Input<String> tableName;

  /// Creates a new [TableItemArgs].
  /// [hashKey] Hash key to use for lookups and identification of the item
  /// [item] JSON representation of a map of attribute name/value pairs, one for each attribute. Only the primary key attributes are required; you can optionally provide other attribute name-value pairs for the item.
  /// [rangeKey] Range key to use for lookups and identification of the item. Required if there is range key defined in the table.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tableName] Name or ARN of the table to contain the item.
  TableItemArgs({
    required this.hashKey,
    required this.item,
    this.rangeKey,
    this.region,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hashKey': hashKey,
      'item': item,
      'rangeKey': ?rangeKey,
      'region': ?region,
      'tableName': tableName,
    };
  }

  factory TableItemArgs.fromMap(Map<String, dynamic> map) {
    return TableItemArgs(
      hashKey: pulumi.Input.fromValue(map['hashKey'] as String),
      item: pulumi.Input.fromValue(map['item'] as String),
      rangeKey: (() { final guardedValue = map['rangeKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
    );
  }
}

