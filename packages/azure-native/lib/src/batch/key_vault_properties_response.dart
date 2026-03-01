// ignore_for_file: unused_element, unnecessary_cast


/// KeyVault configuration when using an encryption KeySource of Microsoft.KeyVault.
class KeyVaultPropertiesResponse {
  /// Full path to the secret with or without version. Example https://mykeyvault.vault.azure.net/keys/testkey/6e34a81fef704045975661e297a4c053. or https://mykeyvault.vault.azure.net/keys/testkey. To be usable the following prerequisites must be met:
  ///
  /// The Batch Account has a System Assigned identity
  /// The account identity has been granted Key/Get, Key/Unwrap and Key/Wrap permissions
  /// The KeyVault has soft-delete and purge protection enabled
  final String? keyIdentifier;

  /// Creates a new [KeyVaultPropertiesResponse].
  /// [keyIdentifier] Full path to the secret with or without version. Example https://mykeyvault.vault.azure.net/keys/testkey/6e34a81fef704045975661e297a4c053. or https://mykeyvault.vault.azure.net/keys/testkey. To be usable the following prerequisites must be met:
  KeyVaultPropertiesResponse({
    this.keyIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyIdentifier': ?keyIdentifier,
    };
  }

  factory KeyVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultPropertiesResponse(
      keyIdentifier: map['keyIdentifier'] == null ? null : map['keyIdentifier'] as String,
    );
  }
}

