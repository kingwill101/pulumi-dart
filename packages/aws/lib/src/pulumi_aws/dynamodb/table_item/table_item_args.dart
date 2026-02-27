// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for TableItem.
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
  /// > **Note:** Names included in `item` are represented internally with everything but letters removed. There is the possibility of collisions if two names, once filtered, are the same. For example, the names `your-name-here` and `yournamehere` will overlap and cause an error.
  final pulumi.Input<String> tableName;

  TableItemArgs({
    required this.hashKey,
    required this.item,
    this.rangeKey,
    this.region,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hashKey'] = hashKey;
    map['item'] = item;
    final rangeKeyValue = rangeKey;
    if (rangeKeyValue != null) {
      map['rangeKey'] = rangeKeyValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['tableName'] = tableName;
    return map;
  }

  factory TableItemArgs.fromMap(Map<String, dynamic> map) {
    return TableItemArgs(
      hashKey: pulumi.Input.asInput<String>(map['hashKey']),
      item: pulumi.Input.asInput<String>(map['item']),
      rangeKey: pulumi.Input.asOptionalInput<String>(map['rangeKey']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tableName: pulumi.Input.asInput<String>(map['tableName']),
    );
  }
}
