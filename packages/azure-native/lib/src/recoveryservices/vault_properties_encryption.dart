// ignore_for_file: unused_element, unnecessary_cast

import 'cmk_kek_identity.dart';
import 'cmk_key_vault_properties.dart';

/// Customer Managed Key details of the resource.
class VaultPropertiesEncryption {
  /// Enabling/Disabling the Double Encryption state
  final String? infrastructureEncryption;
  /// The details of the identity used for CMK
  final CmkKekIdentity? kekIdentity;
  /// The properties of the Key Vault which hosts CMK
  final CmkKeyVaultProperties? keyVaultProperties;

  /// Creates a new [VaultPropertiesEncryption].
  /// [infrastructureEncryption] Enabling/Disabling the Double Encryption state
  /// [kekIdentity] The details of the identity used for CMK
  /// [keyVaultProperties] The properties of the Key Vault which hosts CMK
  VaultPropertiesEncryption({
    this.infrastructureEncryption,
    this.kekIdentity,
    this.keyVaultProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infrastructureEncryption': ?infrastructureEncryption,
      'kekIdentity': ?kekIdentity == null ? null : kekIdentity!.toMap(),
      'keyVaultProperties': ?keyVaultProperties == null ? null : keyVaultProperties!.toMap(),
    };
  }

  factory VaultPropertiesEncryption.fromMap(Map<String, dynamic> map) {
    return VaultPropertiesEncryption(
      infrastructureEncryption: map['infrastructureEncryption'] == null ? null : map['infrastructureEncryption'] as String,
      kekIdentity: map['kekIdentity'] == null ? null : CmkKekIdentity.fromMap((map['kekIdentity'] as Map).cast<String, dynamic>()),
      keyVaultProperties: map['keyVaultProperties'] == null ? null : CmkKeyVaultProperties.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

