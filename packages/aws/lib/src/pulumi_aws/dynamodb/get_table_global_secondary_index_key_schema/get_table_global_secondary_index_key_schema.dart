// ignore_for_file: unused_element, unnecessary_cast

class GetTableGlobalSecondaryIndexKeySchema {
  final String attributeName;
  final String keyType;

  GetTableGlobalSecondaryIndexKeySchema({
    required this.attributeName,
    required this.keyType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attributeName'] = attributeName;
    map['keyType'] = keyType;
    return map;
  }

  factory GetTableGlobalSecondaryIndexKeySchema.fromMap(
      Map<String, dynamic> map) {
    return GetTableGlobalSecondaryIndexKeySchema(
      attributeName: map['attributeName'] as String,
      keyType: map['keyType'] as String,
    );
  }
}
