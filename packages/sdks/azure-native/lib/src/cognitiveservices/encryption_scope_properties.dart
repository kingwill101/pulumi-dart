// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_properties.dart';

/// Properties to EncryptionScope
class EncryptionScopeProperties {
  /// Enumerates the possible value of keySource for Encryption
  final pulumi.Input<String>? keySource;
  /// Properties of KeyVault
  final pulumi.Input<KeyVaultProperties>? keyVaultProperties;
  /// The encryptionScope state.
  final pulumi.Input<String>? state;

  /// Creates a new [EncryptionScopeProperties].
  /// [keySource] Enumerates the possible value of keySource for Encryption
  /// [keyVaultProperties] Properties of KeyVault
  /// [state] The encryptionScope state.
  EncryptionScopeProperties({
    this.keySource,
    this.keyVaultProperties,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keySource': ?keySource,
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<KeyVaultProperties, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
      'state': ?state,
    };
  }

  factory EncryptionScopeProperties.fromMap(Map<String, dynamic> map) {
    return EncryptionScopeProperties(
      keySource: map['keySource'] == null ? null : (map['keySource'] as String).input(),
      keyVaultProperties: map['keyVaultProperties'] == null ? null : (KeyVaultProperties.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}

