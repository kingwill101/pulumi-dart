// ignore_for_file: unused_element, unnecessary_cast

class GlobalSecondaryIndexKeySchema {
  /// Name of the attribute.
  final String attributeName;

  /// Type of the attribute in the index.
  /// Valid values are `S` (string), `N` (number), or `B` (binary).
  final String attributeType;

  /// Key type.
  /// Valid values are `HASH` or `RANGE`.
  final String keyType;

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
    final map = <String, dynamic>{};
    map['attributeName'] = attributeName;
    map['attributeType'] = attributeType;
    map['keyType'] = keyType;
    return map;
  }

  factory GlobalSecondaryIndexKeySchema.fromMap(Map<String, dynamic> map) {
    return GlobalSecondaryIndexKeySchema(
      attributeName: map['attributeName'] as String,
      attributeType: map['attributeType'] as String,
      keyType: map['keyType'] as String,
    );
  }
}
