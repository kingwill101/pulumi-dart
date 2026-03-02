// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_encryption_configuration_key_vault_configuration.dart';

/// Configuration properties for disk encryption
class DiskEncryptionConfiguration {
  /// The Key Vault that contains your key to use for disk encryption. The Key Vault must be in the same region as the Managed Environment.
  final pulumi.Input<DiskEncryptionConfigurationKeyVaultConfiguration>? keyVaultConfiguration;

  /// Creates a new [DiskEncryptionConfiguration].
  /// [keyVaultConfiguration] The Key Vault that contains your key to use for disk encryption. The Key Vault must be in the same region as the Managed Environment.
  DiskEncryptionConfiguration({
    this.keyVaultConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultConfiguration': ?pulumi.Input.mapOptionalInputValue<DiskEncryptionConfigurationKeyVaultConfiguration, Map<String, dynamic>>(keyVaultConfiguration, (value) => value.toMap()),
    };
  }

  factory DiskEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return DiskEncryptionConfiguration(
      keyVaultConfiguration: map['keyVaultConfiguration'] == null ? null : (DiskEncryptionConfigurationKeyVaultConfiguration.fromMap((map['keyVaultConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

