// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_settings_element_response.dart';

/// Encryption settings for disk or snapshot
class EncryptionSettingsCollectionResponse {
  /// Set this flag to true and provide DiskEncryptionKey and optional KeyEncryptionKey to enable encryption. Set this flag to false and remove DiskEncryptionKey and KeyEncryptionKey to disable encryption. If EncryptionSettings is null in the request object, the existing settings remain unchanged.
  final pulumi.Input<bool> enabled;
  /// A collection of encryption settings, one for each disk volume.
  final pulumi.Input<List<EncryptionSettingsElementResponse>>? encryptionSettings;
  /// Describes what type of encryption is used for the disks. Once this field is set, it cannot be overwritten. '1.0' corresponds to Azure Disk Encryption with AAD app.'1.1' corresponds to Azure Disk Encryption.
  final pulumi.Input<String>? encryptionSettingsVersion;

  /// Creates a new [EncryptionSettingsCollectionResponse].
  /// [enabled] Set this flag to true and provide DiskEncryptionKey and optional KeyEncryptionKey to enable encryption. Set this flag to false and remove DiskEncryptionKey and KeyEncryptionKey to disable encryption. If EncryptionSettings is null in the request object, the existing settings remain unchanged.
  /// [encryptionSettings] A collection of encryption settings, one for each disk volume.
  /// [encryptionSettingsVersion] Describes what type of encryption is used for the disks. Once this field is set, it cannot be overwritten. '1.0' corresponds to Azure Disk Encryption with AAD app.'1.1' corresponds to Azure Disk Encryption.
  EncryptionSettingsCollectionResponse({
    required this.enabled,
    this.encryptionSettings,
    this.encryptionSettingsVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'encryptionSettings': ?pulumi.Input.mapOptionalInputValue<List<EncryptionSettingsElementResponse>, List<Map<String, dynamic>>>(encryptionSettings, (value) => pulumi.Input.encodeList<EncryptionSettingsElementResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encryptionSettingsVersion': ?encryptionSettingsVersion,
    };
  }

  factory EncryptionSettingsCollectionResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionSettingsCollectionResponse(
      enabled: (map['enabled'] as bool).input(),
      encryptionSettings: map['encryptionSettings'] == null ? null : (pulumi.Input.decodeList<EncryptionSettingsElementResponse>(map['encryptionSettings'], (value) => EncryptionSettingsElementResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      encryptionSettingsVersion: map['encryptionSettingsVersion'] == null ? null : (map['encryptionSettingsVersion'] as String).input(),
    );
  }
}

