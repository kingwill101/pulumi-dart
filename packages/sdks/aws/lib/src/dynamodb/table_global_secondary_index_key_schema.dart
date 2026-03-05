// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableGlobalSecondaryIndexKeySchema {
  /// Name of the attribute; must be defined as an attribute in the resource.
  final pulumi.Input<String> attributeName;
  /// The type of key. Valid values are `HASH` (partition key) or `RANGE` (sort key). You can specify up to 4 attributes with `key_type = "HASH"` and up to 4 attributes with `key_type = "RANGE"`.
  final pulumi.Input<String> keyType;

  /// Creates a new [TableGlobalSecondaryIndexKeySchema].
  /// [attributeName] Name of the attribute; must be defined as an attribute in the resource.
  /// [keyType] The type of key. Valid values are `HASH` (partition key) or `RANGE` (sort key). You can specify up to 4 attributes with `key_type = "HASH"` and up to 4 attributes with `key_type = "RANGE"`.
  TableGlobalSecondaryIndexKeySchema({
    required this.attributeName,
    required this.keyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeName': attributeName,
      'keyType': keyType,
    };
  }

  factory TableGlobalSecondaryIndexKeySchema.fromMap(Map<String, dynamic> map) {
    return TableGlobalSecondaryIndexKeySchema(
      attributeName: pulumi.Input.fromValue(map['attributeName'] as String),
      keyType: pulumi.Input.fromValue(map['keyType'] as String),
    );
  }
}

