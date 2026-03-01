// ignore_for_file: unused_element, unnecessary_cast


class GetAliasesAlias {
  /// The unique identifier of the alias.
  final String aliasName;
  /// ID of the alias. The value is same as KMS alias_name.
  final String id;
  /// ID of the key.
  final String keyId;

  /// Creates a new [GetAliasesAlias].
  /// [aliasName] The unique identifier of the alias.
  /// [id] ID of the alias. The value is same as KMS alias_name.
  /// [keyId] ID of the key.
  GetAliasesAlias({
    required this.aliasName,
    required this.id,
    required this.keyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasName': aliasName,
      'id': id,
      'keyId': keyId,
    };
  }

  factory GetAliasesAlias.fromMap(Map<String, dynamic> map) {
    return GetAliasesAlias(
      aliasName: map['aliasName'] as String,
      id: map['id'] as String,
      keyId: map['keyId'] as String,
    );
  }
}

