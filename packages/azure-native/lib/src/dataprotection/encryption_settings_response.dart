// ignore_for_file: unused_element, unnecessary_cast

import 'cmk_kek_identity_response.dart';
import 'cmk_key_vault_properties_response.dart';

/// Customer Managed Key details of the resource.
class EncryptionSettingsResponse {
  /// Enabling/Disabling the Double Encryption state
  final String? infrastructureEncryption;
  /// The details of the managed identity used for CMK
  final CmkKekIdentityResponse? kekIdentity;
  /// The properties of the Key Vault which hosts CMK
  final CmkKeyVaultPropertiesResponse? keyVaultProperties;
  /// Encryption state of the Backup Vault.
  final String? state;

  /// Creates a new [EncryptionSettingsResponse].
  /// [infrastructureEncryption] Enabling/Disabling the Double Encryption state
  /// [kekIdentity] The details of the managed identity used for CMK
  /// [keyVaultProperties] The properties of the Key Vault which hosts CMK
  /// [state] Encryption state of the Backup Vault.
  EncryptionSettingsResponse({
    this.infrastructureEncryption,
    this.kekIdentity,
    this.keyVaultProperties,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infrastructureEncryption': ?infrastructureEncryption,
      'kekIdentity': ?kekIdentity == null ? null : kekIdentity!.toMap(),
      'keyVaultProperties': ?keyVaultProperties == null ? null : keyVaultProperties!.toMap(),
      'state': ?state,
    };
  }

  factory EncryptionSettingsResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionSettingsResponse(
      infrastructureEncryption: map['infrastructureEncryption'] == null ? null : map['infrastructureEncryption'] as String,
      kekIdentity: map['kekIdentity'] == null ? null : CmkKekIdentityResponse.fromMap((map['kekIdentity'] as Map).cast<String, dynamic>()),
      keyVaultProperties: map['keyVaultProperties'] == null ? null : CmkKeyVaultPropertiesResponse.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

