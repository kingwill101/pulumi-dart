// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_identity.dart';
import 'key_vault_properties.dart';

/// Encryption settings
class AccountEncryption {
  /// Identity used to authenticate to KeyVault. Applicable if keySource is 'Microsoft.KeyVault'.
  final EncryptionIdentity? identity;
  /// The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.NetApp, Microsoft.KeyVault
  final String? keySource;
  /// Properties provided by KeVault. Applicable if keySource is 'Microsoft.KeyVault'.
  final KeyVaultProperties? keyVaultProperties;

  /// Creates a new [AccountEncryption].
  /// [identity] Identity used to authenticate to KeyVault. Applicable if keySource is 'Microsoft.KeyVault'.
  /// [keySource] The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.NetApp, Microsoft.KeyVault
  /// [keyVaultProperties] Properties provided by KeVault. Applicable if keySource is 'Microsoft.KeyVault'.
  AccountEncryption({
    this.identity,
    this.keySource,
    this.keyVaultProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity == null ? null : identity!.toMap(),
      'keySource': ?keySource,
      'keyVaultProperties': ?keyVaultProperties == null ? null : keyVaultProperties!.toMap(),
    };
  }

  factory AccountEncryption.fromMap(Map<String, dynamic> map) {
    return AccountEncryption(
      identity: map['identity'] == null ? null : EncryptionIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      keySource: map['keySource'] == null ? null : map['keySource'] as String,
      keyVaultProperties: map['keyVaultProperties'] == null ? null : KeyVaultProperties.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

