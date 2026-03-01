// ignore_for_file: unused_element, unnecessary_cast


class MongoClusterCustomerManagedKey {
  /// The ID of the key vault key used for encryption. For example: `https://example-vault-name.vault.azure.net/keys/example-key-name`.
  final String keyVaultKeyId;
  /// The ID of the User Assigned Identity that has access to the Key Vault Key.
  final String userAssignedIdentityId;

  /// Creates a new [MongoClusterCustomerManagedKey].
  /// [keyVaultKeyId] The ID of the key vault key used for encryption. For example: `https://example-vault-name.vault.azure.net/keys/example-key-name`.
  /// [userAssignedIdentityId] The ID of the User Assigned Identity that has access to the Key Vault Key.
  MongoClusterCustomerManagedKey({
    required this.keyVaultKeyId,
    required this.userAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultKeyId': keyVaultKeyId,
      'userAssignedIdentityId': userAssignedIdentityId,
    };
  }

  factory MongoClusterCustomerManagedKey.fromMap(Map<String, dynamic> map) {
    return MongoClusterCustomerManagedKey(
      keyVaultKeyId: map['keyVaultKeyId'] as String,
      userAssignedIdentityId: map['userAssignedIdentityId'] as String,
    );
  }
}

