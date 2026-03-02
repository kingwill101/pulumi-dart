// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cmk_kek_identity_response.dart';
import 'cmk_key_vault_properties_response.dart';

/// Customer Managed Key details of the resource.
class EncryptionSettingsResponse {
  /// Enabling/Disabling the Double Encryption state
  final pulumi.Input<String>? infrastructureEncryption;
  /// The details of the managed identity used for CMK
  final pulumi.Input<CmkKekIdentityResponse>? kekIdentity;
  /// The properties of the Key Vault which hosts CMK
  final pulumi.Input<CmkKeyVaultPropertiesResponse>? keyVaultProperties;
  /// Encryption state of the Backup Vault.
  final pulumi.Input<String>? state;

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
      'kekIdentity': ?pulumi.Input.mapOptionalInputValue<CmkKekIdentityResponse, Map<String, dynamic>>(kekIdentity, (value) => value.toMap()),
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<CmkKeyVaultPropertiesResponse, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
      'state': ?state,
    };
  }

  factory EncryptionSettingsResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionSettingsResponse(
      infrastructureEncryption: map['infrastructureEncryption'] == null ? null : (map['infrastructureEncryption']! as String).input(),
      kekIdentity: map['kekIdentity'] == null ? null : (CmkKekIdentityResponse.fromMap((map['kekIdentity']! as Map).cast<String, dynamic>())).input(),
      keyVaultProperties: map['keyVaultProperties'] == null ? null : (CmkKeyVaultPropertiesResponse.fromMap((map['keyVaultProperties']! as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

