// ignore_for_file: unused_element, unnecessary_cast

import 'managed_disk_encryption_settings_disk_encryption_key.dart';
import 'managed_disk_encryption_settings_key_encryption_key.dart';

class ManagedDiskEncryptionSettings {
  /// A `disk_encryption_key` block as defined above.
  final ManagedDiskEncryptionSettingsDiskEncryptionKey diskEncryptionKey;
  /// A `key_encryption_key` block as defined below.
  final ManagedDiskEncryptionSettingsKeyEncryptionKey? keyEncryptionKey;

  /// Creates a new [ManagedDiskEncryptionSettings].
  /// [diskEncryptionKey] A `disk_encryption_key` block as defined above.
  /// [keyEncryptionKey] A `key_encryption_key` block as defined below.
  ManagedDiskEncryptionSettings({
    required this.diskEncryptionKey,
    this.keyEncryptionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionKey': diskEncryptionKey.toMap(),
      'keyEncryptionKey': ?keyEncryptionKey == null ? null : keyEncryptionKey!.toMap(),
    };
  }

  factory ManagedDiskEncryptionSettings.fromMap(Map<String, dynamic> map) {
    return ManagedDiskEncryptionSettings(
      diskEncryptionKey: ManagedDiskEncryptionSettingsDiskEncryptionKey.fromMap((map['diskEncryptionKey'] as Map).cast<String, dynamic>()),
      keyEncryptionKey: map['keyEncryptionKey'] == null ? null : ManagedDiskEncryptionSettingsKeyEncryptionKey.fromMap((map['keyEncryptionKey'] as Map).cast<String, dynamic>()),
    );
  }
}

