// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_properties.dart';

/// Properties to EncryptionScope
class EncryptionScopeProperties {
  /// Enumerates the possible value of keySource for Encryption
  final pulumi.Input<dynamic>? keySource;
  /// Properties of KeyVault
  final pulumi.Input<KeyVaultProperties?>? keyVaultProperties;
  /// The encryptionScope state.
  final pulumi.Input<dynamic>? state;

  /// Creates a new [EncryptionScopeProperties].
  /// [keySource] Enumerates the possible value of keySource for Encryption
  /// [keyVaultProperties] Properties of KeyVault
  /// [state] The encryptionScope state.
  EncryptionScopeProperties({
    pulumi.Input<dynamic>? keySource,
    this.keyVaultProperties,
    this.state,
  }) : keySource = keySource ?? pulumi.Input.fromValue('Microsoft.KeyVault');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keySource': ?keySource,
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<KeyVaultProperties, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
      'state': ?state,
    };
  }

  factory EncryptionScopeProperties.fromMap(Map<String, dynamic> map) {
    return EncryptionScopeProperties(
      keySource: (() { final guardedValue = map['keySource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      keyVaultProperties: (() { final guardedValue = map['keyVaultProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
