// ignore_for_file: unused_element, unnecessary_cast


/// Properties of a user's secret store.
class UserSecretStoreResponse {
  /// The ID of the user's Key vault.
  final String? keyVaultId;
  /// The URI of the user's Key vault.
  final String? keyVaultUri;

  /// Creates a new [UserSecretStoreResponse].
  /// [keyVaultId] The ID of the user's Key vault.
  /// [keyVaultUri] The URI of the user's Key vault.
  UserSecretStoreResponse({
    this.keyVaultId,
    this.keyVaultUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultId': ?keyVaultId,
      'keyVaultUri': ?keyVaultUri,
    };
  }

  factory UserSecretStoreResponse.fromMap(Map<String, dynamic> map) {
    return UserSecretStoreResponse(
      keyVaultId: map['keyVaultId'] == null ? null : map['keyVaultId'] as String,
      keyVaultUri: map['keyVaultUri'] == null ? null : map['keyVaultUri'] as String,
    );
  }
}

