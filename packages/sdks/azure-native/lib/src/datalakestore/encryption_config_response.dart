// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_meta_info_response.dart';

/// The encryption configuration for the account.
class EncryptionConfigResponse {
  /// The Key Vault information for connecting to user managed encryption keys.
  final pulumi.Input<KeyVaultMetaInfoResponse?>? keyVaultMetaInfo;
  /// The type of encryption configuration being used. Currently the only supported types are 'UserManaged' and 'ServiceManaged'.
  final pulumi.Input<String> type;

  /// Creates a new [EncryptionConfigResponse].
  /// [keyVaultMetaInfo] The Key Vault information for connecting to user managed encryption keys.
  /// [type] The type of encryption configuration being used. Currently the only supported types are 'UserManaged' and 'ServiceManaged'.
  const EncryptionConfigResponse({
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
      keyVaultMetaInfo: (() { final guardedValue = map['keyVaultMetaInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultMetaInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
