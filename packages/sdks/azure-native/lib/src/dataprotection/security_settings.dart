// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_settings.dart';
import 'immutability_settings.dart';
import 'soft_delete_settings.dart';

/// Class containing security settings of vault
class SecuritySettings {
  /// Customer Managed Key details of the resource.
  final pulumi.Input<EncryptionSettings>? encryptionSettings;
  /// Immutability Settings at vault level
  final pulumi.Input<ImmutabilitySettings>? immutabilitySettings;
  /// Soft delete related settings
  final pulumi.Input<SoftDeleteSettings>? softDeleteSettings;

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
      'encryptionSettings': ?pulumi.Input.mapOptionalInputValue<EncryptionSettings, Map<String, dynamic>>(encryptionSettings, (value) => value.toMap()),
      'immutabilitySettings': ?pulumi.Input.mapOptionalInputValue<ImmutabilitySettings, Map<String, dynamic>>(immutabilitySettings, (value) => value.toMap()),
      'softDeleteSettings': ?pulumi.Input.mapOptionalInputValue<SoftDeleteSettings, Map<String, dynamic>>(softDeleteSettings, (value) => value.toMap()),
    };
  }

  factory SecuritySettings.fromMap(Map<String, dynamic> map) {
    return SecuritySettings(
      encryptionSettings: (() { final guardedValue = map['encryptionSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      immutabilitySettings: (() { final guardedValue = map['immutabilitySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImmutabilitySettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      softDeleteSettings: (() { final guardedValue = map['softDeleteSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SoftDeleteSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

