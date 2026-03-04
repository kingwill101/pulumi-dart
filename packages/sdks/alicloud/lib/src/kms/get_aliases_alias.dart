// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAliasesAlias {
  /// The unique identifier of the alias.
  final pulumi.Input<String> aliasName;

  /// ID of the alias. The value is same as KMS alias_name.
  final pulumi.Input<String> id;

  /// ID of the key.
  final pulumi.Input<String> keyId;

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
    return <String, dynamic>{'aliasName': aliasName, 'id': id, 'keyId': keyId};
  }

  factory GetAliasesAlias.fromMap(Map<String, dynamic> map) {
    return GetAliasesAlias(
      aliasName: pulumi.Input.fromValue(map['aliasName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      keyId: pulumi.Input.fromValue(map['keyId'] as String),
    );
  }
}
