// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the parameters for using a user's KeyVault certificate for securing custom domain.
class KeyVaultCertificateSourceParametersResponse {
  /// Describes the action that shall be taken when the certificate is removed from Key Vault.
  final pulumi.Input<String> deleteRule;
  /// Resource group of the user's Key Vault containing the SSL certificate
  final pulumi.Input<String> resourceGroupName;
  /// The name of Key Vault Secret (representing the full certificate PFX) in Key Vault.
  final pulumi.Input<String> secretName;
  /// The version(GUID) of Key Vault Secret in Key Vault.
  final pulumi.Input<String>? secretVersion;
  /// Subscription Id of the user's Key Vault containing the SSL certificate
  final pulumi.Input<String> subscriptionId;
  /// Expected value is 'KeyVaultCertificateSourceParameters'.
  final pulumi.Input<String> typeName;
  /// Describes the action that shall be taken when the certificate is updated in Key Vault.
  final pulumi.Input<String> updateRule;
  /// The name of the user's Key Vault containing the SSL certificate
  final pulumi.Input<String> vaultName;

  /// Creates a new [KeyVaultCertificateSourceParametersResponse].
  /// [deleteRule] Describes the action that shall be taken when the certificate is removed from Key Vault.
  /// [resourceGroupName] Resource group of the user's Key Vault containing the SSL certificate
  /// [secretName] The name of Key Vault Secret (representing the full certificate PFX) in Key Vault.
  /// [secretVersion] The version(GUID) of Key Vault Secret in Key Vault.
  /// [subscriptionId] Subscription Id of the user's Key Vault containing the SSL certificate
  /// [typeName] Expected value is 'KeyVaultCertificateSourceParameters'.
  /// [updateRule] Describes the action that shall be taken when the certificate is updated in Key Vault.
  /// [vaultName] The name of the user's Key Vault containing the SSL certificate
  KeyVaultCertificateSourceParametersResponse({
    required this.deleteRule,
    required this.resourceGroupName,
    required this.secretName,
    this.secretVersion,
    required this.subscriptionId,
    required this.typeName,
    required this.updateRule,
    required this.vaultName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteRule': deleteRule,
      'resourceGroupName': resourceGroupName,
      'secretName': secretName,
      'secretVersion': ?secretVersion,
      'subscriptionId': subscriptionId,
      'typeName': typeName,
      'updateRule': updateRule,
      'vaultName': vaultName,
    };
  }

  factory KeyVaultCertificateSourceParametersResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultCertificateSourceParametersResponse(
      deleteRule: (map['deleteRule'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      secretName: (map['secretName'] as String).input(),
      secretVersion: map['secretVersion'] == null ? null : (map['secretVersion']! as String).input(),
      subscriptionId: (map['subscriptionId'] as String).input(),
      typeName: (map['typeName'] as String).input(),
      updateRule: (map['updateRule'] as String).input(),
      vaultName: (map['vaultName'] as String).input(),
    );
  }
}

