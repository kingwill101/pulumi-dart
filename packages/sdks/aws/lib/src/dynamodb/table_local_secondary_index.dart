// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableLocalSecondaryIndex {
  /// Name of the index
  final pulumi.Input<String> name;
  /// Only required with `INCLUDE` as a projection type; a list of attributes to project into the index. These do not need to be defined as attributes on the table.
  final pulumi.Input<List<String>>? nonKeyAttributes;
  /// One of `ALL`, `INCLUDE` or `KEYS_ONLY` where `ALL` projects every attribute into the index, `KEYS_ONLY` projects  into the index only the table and index hashKey and sortKey attributes ,  `INCLUDE` projects into the index all of the attributes that are defined in `nonKeyAttributes` in addition to the attributes that that`KEYS_ONLY` project.
  final pulumi.Input<String> projectionType;
  /// Name of the range key.
  final pulumi.Input<String> rangeKey;

  /// Creates a new [TableLocalSecondaryIndex].
  /// [name] Name of the index
  /// [nonKeyAttributes] Only required with `INCLUDE` as a projection type; a list of attributes to project into the index. These do not need to be defined as attributes on the table.
  /// [projectionType] One of `ALL`, `INCLUDE` or `KEYS_ONLY` where `ALL` projects every attribute into the index, `KEYS_ONLY` projects  into the index only the table and index hashKey and sortKey attributes ,  `INCLUDE` projects into the index all of the attributes that are defined in `nonKeyAttributes` in addition to the attributes that that`KEYS_ONLY` project.
  /// [rangeKey] Name of the range key.
  const TableLocalSecondaryIndex({
    required this.name,
    this.nonKeyAttributes,
    required this.projectionType,
    required this.rangeKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'nonKeyAttributes': ?nonKeyAttributes,
      'projectionType': projectionType,
      'rangeKey': rangeKey,
    };
  }

  factory TableLocalSecondaryIndex.fromMap(Map<String, dynamic> map) {
    return TableLocalSecondaryIndex(
      name: pulumi.Input.fromValue(map['name'] as String),
      nonKeyAttributes: (() { final guardedValue = map['nonKeyAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      projectionType: pulumi.Input.fromValue(map['projectionType'] as String),
      rangeKey: pulumi.Input.fromValue(map['rangeKey'] as String),
    );
  }
}
