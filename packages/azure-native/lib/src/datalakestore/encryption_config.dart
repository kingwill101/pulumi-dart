// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_config_type.dart';
import 'key_vault_meta_info.dart';

/// The encryption configuration for the account.
class EncryptionConfig {
  /// The Key Vault information for connecting to user managed encryption keys.
  final KeyVaultMetaInfo? keyVaultMetaInfo;
  /// The type of encryption configuration being used. Currently the only supported types are 'UserManaged' and 'ServiceManaged'.
  final EncryptionConfigType type;

  /// Creates a new [EncryptionConfig].
  /// [keyVaultMetaInfo] The Key Vault information for connecting to user managed encryption keys.
  /// [type] The type of encryption configuration being used. Currently the only supported types are 'UserManaged' and 'ServiceManaged'.
  EncryptionConfig({
    this.keyVaultMetaInfo,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultMetaInfo': ?keyVaultMetaInfo == null ? null : keyVaultMetaInfo!.toMap(),
      'type': type.value,
    };
  }

  factory EncryptionConfig.fromMap(Map<String, dynamic> map) {
    return EncryptionConfig(
      keyVaultMetaInfo: map['keyVaultMetaInfo'] == null ? null : KeyVaultMetaInfo.fromMap((map['keyVaultMetaInfo'] as Map).cast<String, dynamic>()),
      type: EncryptionConfigType.fromValue(map['type'] as String),
    );
  }
}

