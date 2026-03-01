// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_key_reference_response.dart';

/// Cache encryption settings.
class CacheEncryptionSettingsResponse {
  /// Specifies the location of the key encryption key in key vault.
  final KeyVaultKeyReferenceResponse? keyEncryptionKey;
  /// Specifies whether the service will automatically rotate to the newest version of the key in the key vault.
  final bool? rotationToLatestKeyVersionEnabled;

  /// Creates a new [CacheEncryptionSettingsResponse].
  /// [keyEncryptionKey] Specifies the location of the key encryption key in key vault.
  /// [rotationToLatestKeyVersionEnabled] Specifies whether the service will automatically rotate to the newest version of the key in the key vault.
  CacheEncryptionSettingsResponse({
    this.keyEncryptionKey,
    this.rotationToLatestKeyVersionEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyEncryptionKey': ?keyEncryptionKey == null ? null : keyEncryptionKey!.toMap(),
      'rotationToLatestKeyVersionEnabled': ?rotationToLatestKeyVersionEnabled,
    };
  }

  factory CacheEncryptionSettingsResponse.fromMap(Map<String, dynamic> map) {
    return CacheEncryptionSettingsResponse(
      keyEncryptionKey: map['keyEncryptionKey'] == null ? null : KeyVaultKeyReferenceResponse.fromMap((map['keyEncryptionKey'] as Map).cast<String, dynamic>()),
      rotationToLatestKeyVersionEnabled: map['rotationToLatestKeyVersionEnabled'] == null ? null : map['rotationToLatestKeyVersionEnabled'] as bool,
    );
  }
}

