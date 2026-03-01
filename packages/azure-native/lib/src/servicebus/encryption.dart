// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_source.dart';
import 'key_vault_properties.dart';

/// Properties to configure Encryption
class Encryption {
  /// Enumerates the possible value of keySource for Encryption
  final KeySource? keySource;
  /// Properties of KeyVault
  final List<KeyVaultProperties>? keyVaultProperties;
  /// Enable Infrastructure Encryption (Double Encryption)
  final bool? requireInfrastructureEncryption;

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
      'keySource': ?keySource == null ? null : keySource!.value,
      'keyVaultProperties': ?keyVaultProperties == null ? null : pulumi.Input.encodeList<KeyVaultProperties, Map<String, dynamic>>(keyVaultProperties!, (value) => value.toMap()),
      'requireInfrastructureEncryption': ?requireInfrastructureEncryption,
    };
  }

  factory Encryption.fromMap(Map<String, dynamic> map) {
    return Encryption(
      keySource: map['keySource'] == null ? null : KeySource.fromValue(map['keySource'] as String),
      keyVaultProperties: map['keyVaultProperties'] == null ? null : pulumi.Input.decodeList<KeyVaultProperties>(map['keyVaultProperties'], (value) => KeyVaultProperties.fromMap((value as Map).cast<String, dynamic>())),
      requireInfrastructureEncryption: map['requireInfrastructureEncryption'] == null ? null : map['requireInfrastructureEncryption'] as bool,
    );
  }
}

