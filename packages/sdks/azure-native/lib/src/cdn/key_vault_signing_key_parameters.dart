// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the parameters for using a user's KeyVault for URL Signing Key.
class KeyVaultSigningKeyParameters {
  /// Resource group of the user's Key Vault containing the secret
  final pulumi.Input<String> resourceGroupName;
  /// The name of secret in Key Vault.
  final pulumi.Input<String> secretName;
  /// The version(GUID) of secret in Key Vault.
  final pulumi.Input<String> secretVersion;
  /// Subscription Id of the user's Key Vault containing the secret
  final pulumi.Input<String> subscriptionId;
  final pulumi.Input<String> typeName;
  /// The name of the user's Key Vault containing the secret
  final pulumi.Input<String> vaultName;

  /// Creates a new [KeyVaultSigningKeyParameters].
  /// [resourceGroupName] Resource group of the user's Key Vault containing the secret
  /// [secretName] The name of secret in Key Vault.
  /// [secretVersion] The version(GUID) of secret in Key Vault.
  /// [subscriptionId] Subscription Id of the user's Key Vault containing the secret
  /// [typeName] Required.
  /// [vaultName] The name of the user's Key Vault containing the secret
  KeyVaultSigningKeyParameters({
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

  factory KeyVaultSigningKeyParameters.fromMap(Map<String, dynamic> map) {
    return KeyVaultSigningKeyParameters(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      secretName: (map['secretName'] as String).input(),
      secretVersion: (map['secretVersion'] as String).input(),
      subscriptionId: (map['subscriptionId'] as String).input(),
      typeName: (map['typeName'] as String).input(),
      vaultName: (map['vaultName'] as String).input(),
    );
  }
}

