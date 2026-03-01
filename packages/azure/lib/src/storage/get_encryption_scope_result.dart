// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEncryptionScope.
class GetEncryptionScopeResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The ID of the Key Vault Key.
  final String keyVaultKeyId;
  final String name;
  /// The source of the Storage Encryption Scope.
  final String source;
  final String storageAccountId;

  /// Creates a new [GetEncryptionScopeResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyVaultKeyId] The ID of the Key Vault Key.
  /// [name] Required.
  /// [source] The source of the Storage Encryption Scope.
  /// [storageAccountId] Required.
  GetEncryptionScopeResult({
    required this.id,
    required this.keyVaultKeyId,
    required this.name,
    required this.source,
    required this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'keyVaultKeyId': keyVaultKeyId,
      'name': name,
      'source': source,
      'storageAccountId': storageAccountId,
    };
  }

  factory GetEncryptionScopeResult.fromMap(Map<String, dynamic> map) {
    return GetEncryptionScopeResult(
      id: map['id'] as String,
      keyVaultKeyId: map['keyVaultKeyId'] as String,
      name: map['name'] as String,
      source: map['source'] as String,
      storageAccountId: map['storageAccountId'] as String,
    );
  }
}

