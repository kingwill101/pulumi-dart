// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GlobalSecondaryIndexKeySchema {
  /// Name of the attribute.
  final pulumi.Input<String> attributeName;
  /// Type of the attribute in the index.
  /// Valid values are `S` (string), `N` (number), or `B` (binary).
  final pulumi.Input<String> attributeType;
  /// Key type.
  /// Valid values are `HASH` or `RANGE`.
  final pulumi.Input<String> keyType;

  /// Creates a new [GlobalSecondaryIndexKeySchema].
  /// [attributeName] Name of the attribute.
  /// [attributeType] Type of the attribute in the index.
  /// [keyType] Key type.
  GlobalSecondaryIndexKeySchema({
    required this.attributeName,
    required this.attributeType,
    required this.keyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeName': attributeName,
      'attributeType': attributeType,
      'keyType': keyType,
    };
  }

  factory GlobalSecondaryIndexKeySchema.fromMap(Map<String, dynamic> map) {
    return GlobalSecondaryIndexKeySchema(
      attributeName: pulumi.Input.fromValue(map['attributeName'] as String),
      attributeType: pulumi.Input.fromValue(map['attributeType'] as String),
      keyType: pulumi.Input.fromValue(map['keyType'] as String),
    );
  }
}

