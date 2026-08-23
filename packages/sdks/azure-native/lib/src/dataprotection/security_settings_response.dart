// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_settings_response.dart';
import 'immutability_settings_response.dart';
import 'soft_delete_settings_response.dart';

/// Class containing security settings of vault
class SecuritySettingsResponse {
  /// Customer Managed Key details of the resource.
  final pulumi.Input<EncryptionSettingsResponse>? encryptionSettings;
  /// Immutability Settings at vault level
  final pulumi.Input<ImmutabilitySettingsResponse>? immutabilitySettings;
  /// Soft delete related settings
  final pulumi.Input<SoftDeleteSettingsResponse>? softDeleteSettings;

  /// Creates a new [SecuritySettingsResponse].
  /// [encryptionSettings] Customer Managed Key details of the resource.
  /// [immutabilitySettings] Immutability Settings at vault level
  /// [softDeleteSettings] Soft delete related settings
  const SecuritySettingsResponse({
    this.encryptionSettings,
    this.immutabilitySettings,
    this.softDeleteSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionSettings': ?pulumi.Input.mapOptionalInputValue<EncryptionSettingsResponse, Map<String, dynamic>>(encryptionSettings, (value) => value.toMap()),
      'immutabilitySettings': ?pulumi.Input.mapOptionalInputValue<ImmutabilitySettingsResponse, Map<String, dynamic>>(immutabilitySettings, (value) => value.toMap()),
      'softDeleteSettings': ?pulumi.Input.mapOptionalInputValue<SoftDeleteSettingsResponse, Map<String, dynamic>>(softDeleteSettings, (value) => value.toMap()),
    };
  }

  factory SecuritySettingsResponse.fromMap(Map<String, dynamic> map) {
    return SecuritySettingsResponse(
      encryptionSettings: (() { final guardedValue = map['encryptionSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      immutabilitySettings: (() { final guardedValue = map['immutabilitySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImmutabilitySettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      softDeleteSettings: (() { final guardedValue = map['softDeleteSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SoftDeleteSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
