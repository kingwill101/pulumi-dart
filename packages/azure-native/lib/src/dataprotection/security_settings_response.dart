// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_settings_response.dart';
import 'immutability_settings_response.dart';
import 'soft_delete_settings_response.dart';

/// Class containing security settings of vault
class SecuritySettingsResponse {
  /// Customer Managed Key details of the resource.
  final EncryptionSettingsResponse? encryptionSettings;
  /// Immutability Settings at vault level
  final ImmutabilitySettingsResponse? immutabilitySettings;
  /// Soft delete related settings
  final SoftDeleteSettingsResponse? softDeleteSettings;

  /// Creates a new [SecuritySettingsResponse].
  /// [encryptionSettings] Customer Managed Key details of the resource.
  /// [immutabilitySettings] Immutability Settings at vault level
  /// [softDeleteSettings] Soft delete related settings
  SecuritySettingsResponse({
    this.encryptionSettings,
    this.immutabilitySettings,
    this.softDeleteSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionSettings': ?encryptionSettings == null ? null : encryptionSettings!.toMap(),
      'immutabilitySettings': ?immutabilitySettings == null ? null : immutabilitySettings!.toMap(),
      'softDeleteSettings': ?softDeleteSettings == null ? null : softDeleteSettings!.toMap(),
    };
  }

  factory SecuritySettingsResponse.fromMap(Map<String, dynamic> map) {
    return SecuritySettingsResponse(
      encryptionSettings: map['encryptionSettings'] == null ? null : EncryptionSettingsResponse.fromMap((map['encryptionSettings'] as Map).cast<String, dynamic>()),
      immutabilitySettings: map['immutabilitySettings'] == null ? null : ImmutabilitySettingsResponse.fromMap((map['immutabilitySettings'] as Map).cast<String, dynamic>()),
      softDeleteSettings: map['softDeleteSettings'] == null ? null : SoftDeleteSettingsResponse.fromMap((map['softDeleteSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

