// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_encryption_configuration_auth.dart';

/// The Key Vault that contains your key to use for disk encryption. The Key Vault must be in the same region as the Managed Environment.
class DiskEncryptionConfigurationKeyVaultConfiguration {
  /// Configuration properties for the authentication to the Key Vault
  final pulumi.Input<DiskEncryptionConfigurationAuth>? auth;
  /// Key URL pointing to a key in KeyVault. Version segment of the Url is required.
  final pulumi.Input<String>? keyUrl;

  /// Creates a new [DiskEncryptionConfigurationKeyVaultConfiguration].
  /// [auth] Configuration properties for the authentication to the Key Vault
  /// [keyUrl] Key URL pointing to a key in KeyVault. Version segment of the Url is required.
  DiskEncryptionConfigurationKeyVaultConfiguration({
    this.auth,
    this.keyUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth': ?pulumi.Input.mapOptionalInputValue<DiskEncryptionConfigurationAuth, Map<String, dynamic>>(auth, (value) => value.toMap()),
      'keyUrl': ?keyUrl,
    };
  }

  factory DiskEncryptionConfigurationKeyVaultConfiguration.fromMap(Map<String, dynamic> map) {
    return DiskEncryptionConfigurationKeyVaultConfiguration(
      auth: map['auth'] == null ? null : (DiskEncryptionConfigurationAuth.fromMap((map['auth']! as Map).cast<String, dynamic>())).input(),
      keyUrl: map['keyUrl'] == null ? null : (map['keyUrl']! as String).input(),
    );
  }
}

