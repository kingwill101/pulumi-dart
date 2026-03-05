// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_config_type.dart';
import 'key_vault_meta_info.dart';

/// The encryption configuration for the account.
class EncryptionConfig {
  /// The Key Vault information for connecting to user managed encryption keys.
  final pulumi.Input<KeyVaultMetaInfo>? keyVaultMetaInfo;
  /// The type of encryption configuration being used. Currently the only supported types are 'UserManaged' and 'ServiceManaged'.
  final pulumi.Input<EncryptionConfigType> type;

  /// Creates a new [EncryptionConfig].
  /// [keyVaultMetaInfo] The Key Vault information for connecting to user managed encryption keys.
  /// [type] The type of encryption configuration being used. Currently the only supported types are 'UserManaged' and 'ServiceManaged'.
  EncryptionConfig({
    this.keyVaultMetaInfo,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultMetaInfo': ?pulumi.Input.mapOptionalInputValue<KeyVaultMetaInfo, Map<String, dynamic>>(keyVaultMetaInfo, (value) => value.toMap()),
      'type': pulumi.Input.mapInputValue<EncryptionConfigType, String>(type, (value) => value.wireValue),
    };
  }

  factory EncryptionConfig.fromMap(Map<String, dynamic> map) {
    return EncryptionConfig(
      keyVaultMetaInfo: (() { final guardedValue = map['keyVaultMetaInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultMetaInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(EncryptionConfigType.fromValue(map['type']! as String)),
    );
  }
}

