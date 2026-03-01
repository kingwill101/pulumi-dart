// ignore_for_file: unused_element, unnecessary_cast


/// Describes the parameters for using a user's KeyVault for URL Signing Key.
class KeyVaultSigningKeyParametersResponse {
  /// Resource group of the user's Key Vault containing the secret
  final String resourceGroupName;
  /// The name of secret in Key Vault.
  final String secretName;
  /// The version(GUID) of secret in Key Vault.
  final String secretVersion;
  /// Subscription Id of the user's Key Vault containing the secret
  final String subscriptionId;
  final String typeName;
  /// The name of the user's Key Vault containing the secret
  final String vaultName;

  /// Creates a new [KeyVaultSigningKeyParametersResponse].
  /// [resourceGroupName] Resource group of the user's Key Vault containing the secret
  /// [secretName] The name of secret in Key Vault.
  /// [secretVersion] The version(GUID) of secret in Key Vault.
  /// [subscriptionId] Subscription Id of the user's Key Vault containing the secret
  /// [typeName] Required.
  /// [vaultName] The name of the user's Key Vault containing the secret
  KeyVaultSigningKeyParametersResponse({
    required this.resourceGroupName,
    required this.secretName,
    required this.secretVersion,
    required this.subscriptionId,
    required this.typeName,
    required this.vaultName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'secretName': secretName,
      'secretVersion': secretVersion,
      'subscriptionId': subscriptionId,
      'typeName': typeName,
      'vaultName': vaultName,
    };
  }

  factory KeyVaultSigningKeyParametersResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultSigningKeyParametersResponse(
      resourceGroupName: map['resourceGroupName'] as String,
      secretName: map['secretName'] as String,
      secretVersion: map['secretVersion'] as String,
      subscriptionId: map['subscriptionId'] as String,
      typeName: map['typeName'] as String,
      vaultName: map['vaultName'] as String,
    );
  }
}

