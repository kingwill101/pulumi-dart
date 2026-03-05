// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_source.dart';
import 'key_vault_properties.dart';

/// Properties to configure Encryption
class Encryption {
  /// Enumerates the possible value of keySource for Encryption
  final pulumi.Input<KeySource>? keySource;
  /// Properties of KeyVault
  final pulumi.Input<List<KeyVaultProperties>>? keyVaultProperties;
  /// Enable Infrastructure Encryption (Double Encryption)
  final pulumi.Input<bool>? requireInfrastructureEncryption;

  /// Creates a new [Encryption].
  /// [keySource] Enumerates the possible value of keySource for Encryption
  /// [keyVaultProperties] Properties of KeyVault
  /// [requireInfrastructureEncryption] Enable Infrastructure Encryption (Double Encryption)
  Encryption({
    this.keySource,
    this.keyVaultProperties,
    this.requireInfrastructureEncryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keySource': ?pulumi.Input.mapOptionalInputValue<KeySource, String>(keySource, (value) => value.wireValue),
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<List<KeyVaultProperties>, List<Map<String, dynamic>>>(keyVaultProperties, (value) => pulumi.Input.encodeList<KeyVaultProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requireInfrastructureEncryption': ?requireInfrastructureEncryption,
    };
  }

  factory Encryption.fromMap(Map<String, dynamic> map) {
    return Encryption(
      keySource: (() { final guardedValue = map['keySource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeySource.fromValue(guardedValue as String)); })(),
      keyVaultProperties: (() { final guardedValue = map['keyVaultProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KeyVaultProperties>(guardedValue, (value) => KeyVaultProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requireInfrastructureEncryption: (() { final guardedValue = map['requireInfrastructureEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

