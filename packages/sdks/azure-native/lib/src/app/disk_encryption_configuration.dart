// ignore_for_file: unused_element, unnecessary_cast

import 'disk_encryption_configuration_key_vault_configuration.dart';

/// Configuration properties for disk encryption
class DiskEncryptionConfiguration {
  /// The Key Vault that contains your key to use for disk encryption. The Key Vault must be in the same region as the Managed Environment.
  final DiskEncryptionConfigurationKeyVaultConfiguration? keyVaultConfiguration;

  /// Creates a new [DiskEncryptionConfiguration].
  /// [keyVaultConfiguration] The Key Vault that contains your key to use for disk encryption. The Key Vault must be in the same region as the Managed Environment.
  DiskEncryptionConfiguration({
    this.keyVaultConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultConfiguration': ?keyVaultConfiguration == null ? null : keyVaultConfiguration!.toMap(),
    };
  }

  factory DiskEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return DiskEncryptionConfiguration(
      keyVaultConfiguration: map['keyVaultConfiguration'] == null ? null : DiskEncryptionConfigurationKeyVaultConfiguration.fromMap((map['keyVaultConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

