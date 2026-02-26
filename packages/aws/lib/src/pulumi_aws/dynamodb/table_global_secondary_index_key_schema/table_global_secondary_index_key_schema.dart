// ignore_for_file: unused_element, unnecessary_cast

class TableGlobalSecondaryIndexKeySchema {
  /// Name of the attribute; must be defined as an attribute in the resource.
  final String attributeName;

  /// The type of key. Valid values are `HASH` (partition key) or `RANGE` (sort key). You can specify up to 4 attributes with <span pulumi-lang-nodejs="`keyType " pulumi-lang-dotnet="`KeyType " pulumi-lang-go="`keyType " pulumi-lang-python="`key_type " pulumi-lang-yaml="`keyType " pulumi-lang-java="`keyType ">`key_type </span>= "HASH"` and up to 4 attributes with <span pulumi-lang-nodejs="`keyType " pulumi-lang-dotnet="`KeyType " pulumi-lang-go="`keyType " pulumi-lang-python="`key_type " pulumi-lang-yaml="`keyType " pulumi-lang-java="`keyType ">`key_type </span>= "RANGE"`.
  final String keyType;

  TableGlobalSecondaryIndexKeySchema({
    required this.attributeName,
    required this.keyType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attributeName'] = attributeName;
    map['keyType'] = keyType;
    return map;
  }

  factory TableGlobalSecondaryIndexKeySchema.fromMap(Map<String, dynamic> map) {
    return TableGlobalSecondaryIndexKeySchema(
      attributeName: map['attributeName'] as String,
      keyType: map['keyType'] as String,
    );
  }
}
