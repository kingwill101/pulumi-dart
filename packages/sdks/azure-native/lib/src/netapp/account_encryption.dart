// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_identity.dart';
import 'key_vault_properties.dart';

/// Encryption settings
class AccountEncryption {
  /// Identity used to authenticate to KeyVault. Applicable if keySource is 'Microsoft.KeyVault'.
  final pulumi.Input<EncryptionIdentity>? identity;
  /// The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.NetApp, Microsoft.KeyVault
  final pulumi.Input<String>? keySource;
  /// Properties provided by KeVault. Applicable if keySource is 'Microsoft.KeyVault'.
  final pulumi.Input<KeyVaultProperties>? keyVaultProperties;

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
      'identity': ?pulumi.Input.mapOptionalInputValue<EncryptionIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keySource': ?keySource,
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<KeyVaultProperties, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
    };
  }

  factory AccountEncryption.fromMap(Map<String, dynamic> map) {
    return AccountEncryption(
      identity: map['identity'] == null ? null : (EncryptionIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      keySource: map['keySource'] == null ? null : (map['keySource']! as String).input(),
      keyVaultProperties: map['keyVaultProperties'] == null ? null : (KeyVaultProperties.fromMap((map['keyVaultProperties']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

