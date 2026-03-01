// ignore_for_file: unused_element, unnecessary_cast

import 'cmkidentity_definition_response.dart';

/// Definition of CMK for the factory.
class EncryptionConfigurationResponse {
  /// User assigned identity to use to authenticate to customer's key vault. If not provided Managed Service Identity will be used.
  final CMKIdentityDefinitionResponse? identity;
  /// The name of the key in Azure Key Vault to use as Customer Managed Key.
  final String keyName;
  /// The version of the key used for CMK. If not provided, latest version will be used.
  final String? keyVersion;
  /// The url of the Azure Key Vault used for CMK.
  final String vaultBaseUrl;

  /// Creates a new [EncryptionConfigurationResponse].
  /// [identity] User assigned identity to use to authenticate to customer's key vault. If not provided Managed Service Identity will be used.
  /// [keyName] The name of the key in Azure Key Vault to use as Customer Managed Key.
  /// [keyVersion] The version of the key used for CMK. If not provided, latest version will be used.
  /// [vaultBaseUrl] The url of the Azure Key Vault used for CMK.
  EncryptionConfigurationResponse({
    this.identity,
    required this.keyName,
    this.keyVersion,
    required this.vaultBaseUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity == null ? null : identity!.toMap(),
      'keyName': keyName,
      'keyVersion': ?keyVersion,
      'vaultBaseUrl': vaultBaseUrl,
    };
  }

  factory EncryptionConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigurationResponse(
      identity: map['identity'] == null ? null : CMKIdentityDefinitionResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      keyName: map['keyName'] as String,
      keyVersion: map['keyVersion'] == null ? null : map['keyVersion'] as String,
      vaultBaseUrl: map['vaultBaseUrl'] as String,
    );
  }
}

