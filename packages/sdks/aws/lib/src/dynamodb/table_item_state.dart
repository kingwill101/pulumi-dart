// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TableItem resources.
class TableItemState {
  /// Hash key to use for lookups and identification of the item
  final pulumi.Input<String>? hashKey;
  /// JSON representation of a map of attribute name/value pairs, one for each attribute. Only the primary key attributes are required; you can optionally provide other attribute name-value pairs for the item.
  final pulumi.Input<String>? item;
  /// Range key to use for lookups and identification of the item. Required if there is range key defined in the table.
  final pulumi.Input<String>? rangeKey;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name or ARN of the table to contain the item.
  ///
  /// > **Note:** Names included in `item` are represented internally with everything but letters removed. There is the possibility of collisions if two names, once filtered, are the same. For example, the names `your-name-here` and `yournamehere` will overlap and cause an error.
  final pulumi.Input<String>? tableName;

  /// Creates a new [TableItemState].
  /// [hashKey] Hash key to use for lookups and identification of the item
  /// [item] JSON representation of a map of attribute name/value pairs, one for each attribute. Only the primary key attributes are required; you can optionally provide other attribute name-value pairs for the item.
  /// [rangeKey] Range key to use for lookups and identification of the item. Required if there is range key defined in the table.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tableName] Name or ARN of the table to contain the item.
  TableItemState({
    this.hashKey,
    this.item,
    this.rangeKey,
    this.region,
    this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hashKey': ?hashKey,
      'item': ?item,
      'rangeKey': ?rangeKey,
      'region': ?region,
      'tableName': ?tableName,
    };
  }

  factory TableItemState.fromMap(Map<String, dynamic> map) {
    return TableItemState(
      hashKey: map['hashKey'] == null ? null : ((map['hashKey'] as String).input()).input(),
      item: map['item'] == null ? null : ((map['item'] as String).input()).input(),
      rangeKey: map['rangeKey'] == null ? null : ((map['rangeKey'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tableName: map['tableName'] == null ? null : ((map['tableName'] as String).input()).input(),
    );
  }
}

