// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_settings.dart';
import 'immutability_settings.dart';
import 'soft_delete_settings.dart';

/// Class containing security settings of vault
class SecuritySettings {
  /// Customer Managed Key details of the resource.
  final EncryptionSettings? encryptionSettings;
  /// Immutability Settings at vault level
  final ImmutabilitySettings? immutabilitySettings;
  /// Soft delete related settings
  final SoftDeleteSettings? softDeleteSettings;

  /// Creates a new [SecuritySettings].
  /// [encryptionSettings] Customer Managed Key details of the resource.
  /// [immutabilitySettings] Immutability Settings at vault level
  /// [softDeleteSettings] Soft delete related settings
  SecuritySettings({
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

  factory SecuritySettings.fromMap(Map<String, dynamic> map) {
    return SecuritySettings(
      encryptionSettings: map['encryptionSettings'] == null ? null : EncryptionSettings.fromMap((map['encryptionSettings'] as Map).cast<String, dynamic>()),
      immutabilitySettings: map['immutabilitySettings'] == null ? null : ImmutabilitySettings.fromMap((map['immutabilitySettings'] as Map).cast<String, dynamic>()),
      softDeleteSettings: map['softDeleteSettings'] == null ? null : SoftDeleteSettings.fromMap((map['softDeleteSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

