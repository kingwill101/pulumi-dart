// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_meta_info_response.dart';

/// The encryption configuration for the account.
class EncryptionConfigResponse {
  /// The Key Vault information for connecting to user managed encryption keys.
  final pulumi.Input<KeyVaultMetaInfoResponse>? keyVaultMetaInfo;
  /// The type of encryption configuration being used. Currently the only supported types are 'UserManaged' and 'ServiceManaged'.
  final pulumi.Input<String> type;

  /// Creates a new [EncryptionConfigResponse].
  /// [keyVaultMetaInfo] The Key Vault information for connecting to user managed encryption keys.
  /// [type] The type of encryption configuration being used. Currently the only supported types are 'UserManaged' and 'ServiceManaged'.
  EncryptionConfigResponse({
    this.keyVaultMetaInfo,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultMetaInfo': ?pulumi.Input.mapOptionalInputValue<KeyVaultMetaInfoResponse, Map<String, dynamic>>(keyVaultMetaInfo, (value) => value.toMap()),
      'type': type,
    };
  }

  factory EncryptionConfigResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigResponse(
      keyVaultMetaInfo: map['keyVaultMetaInfo'] == null ? null : (KeyVaultMetaInfoResponse.fromMap((map['keyVaultMetaInfo']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

