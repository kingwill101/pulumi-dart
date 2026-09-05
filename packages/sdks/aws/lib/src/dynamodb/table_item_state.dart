// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TableItem resources.
class TableItemState {
  /// Hash key to use for lookups and identification of the item
  final pulumi.Input<String?>? hashKey;
  /// Canonical string representation of the hash key value. Binary values are base64-encoded; numbers and strings are taken verbatim.
  final pulumi.Input<String?>? hashKeyValue;
  /// JSON representation of a map of attribute name/value pairs, one for each attribute. Only the primary key attributes are required; you can optionally provide other attribute name-value pairs for the item.
  final pulumi.Input<String?>? item;
  /// Range key to use for lookups and identification of the item. Required if there is range key defined in the table.
  final pulumi.Input<String?>? rangeKey;
  /// Canonical string representation of the range key value, when the table has a range key. Same encoding as `hashKeyValue`.
  final pulumi.Input<String?>? rangeKeyValue;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Name or ARN of the table to contain the item.
  ///
  /// &gt; **Note:** Names included in `item` are represented internally with everything but letters removed. There is the possibility of collisions if two names, once filtered, are the same. For example, the names `your-name-here` and `yournamehere` will overlap and cause an error.
  final pulumi.Input<String?>? tableName;

  /// Creates a new [TableItemState].
  /// [hashKey] Hash key to use for lookups and identification of the item
  /// [hashKeyValue] Canonical string representation of the hash key value. Binary values are base64-encoded; numbers and strings are taken verbatim.
  /// [item] JSON representation of a map of attribute name/value pairs, one for each attribute. Only the primary key attributes are required; you can optionally provide other attribute name-value pairs for the item.
  /// [rangeKey] Range key to use for lookups and identification of the item. Required if there is range key defined in the table.
  /// [rangeKeyValue] Canonical string representation of the range key value, when the table has a range key. Same encoding as `hashKeyValue`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tableName] Name or ARN of the table to contain the item.
  const TableItemState({
    this.hashKey,
    this.hashKeyValue,
    this.item,
    this.rangeKey,
    this.rangeKeyValue,
    this.region,
    this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hashKey': ?hashKey,
      'hashKeyValue': ?hashKeyValue,
      'item': ?item,
      'rangeKey': ?rangeKey,
      'rangeKeyValue': ?rangeKeyValue,
      'region': ?region,
      'tableName': ?tableName,
    };
  }

  factory TableItemState.fromMap(Map<String, dynamic> map) {
    return TableItemState(
      hashKey: (() { final guardedValue = map['hashKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hashKeyValue: (() { final guardedValue = map['hashKeyValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      item: (() { final guardedValue = map['item']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rangeKey: (() { final guardedValue = map['rangeKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rangeKeyValue: (() { final guardedValue = map['rangeKeyValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
