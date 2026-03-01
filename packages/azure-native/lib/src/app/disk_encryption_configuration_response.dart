// ignore_for_file: unused_element, unnecessary_cast

import 'disk_encryption_configuration_response_key_vault_configuration.dart';

/// Configuration properties for disk encryption
class DiskEncryptionConfigurationResponse {
  /// The Key Vault that contains your key to use for disk encryption. The Key Vault must be in the same region as the Managed Environment.
  final DiskEncryptionConfigurationResponseKeyVaultConfiguration? keyVaultConfiguration;

  /// Creates a new [DiskEncryptionConfigurationResponse].
  /// [keyVaultConfiguration] The Key Vault that contains your key to use for disk encryption. The Key Vault must be in the same region as the Managed Environment.
  DiskEncryptionConfigurationResponse({
    this.keyVaultConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultConfiguration': ?keyVaultConfiguration == null ? null : keyVaultConfiguration!.toMap(),
    };
  }

  factory DiskEncryptionConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DiskEncryptionConfigurationResponse(
      keyVaultConfiguration: map['keyVaultConfiguration'] == null ? null : DiskEncryptionConfigurationResponseKeyVaultConfiguration.fromMap((map['keyVaultConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

