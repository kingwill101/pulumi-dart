// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_meta_info_response.dart';

/// The encryption configuration for the account.
class EncryptionConfigResponse {
  /// The Key Vault information for connecting to user managed encryption keys.
  final KeyVaultMetaInfoResponse? keyVaultMetaInfo;
  /// The type of encryption configuration being used. Currently the only supported types are 'UserManaged' and 'ServiceManaged'.
  final String type;

  /// Creates a new [EncryptionConfigResponse].
  /// [keyVaultMetaInfo] The Key Vault information for connecting to user managed encryption keys.
  /// [type] The type of encryption configuration being used. Currently the only supported types are 'UserManaged' and 'ServiceManaged'.
  EncryptionConfigResponse({
    this.keyVaultMetaInfo,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultMetaInfo': ?keyVaultMetaInfo == null ? null : keyVaultMetaInfo!.toMap(),
      'type': type,
    };
  }

  factory EncryptionConfigResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigResponse(
      keyVaultMetaInfo: map['keyVaultMetaInfo'] == null ? null : KeyVaultMetaInfoResponse.fromMap((map['keyVaultMetaInfo'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

