// ignore_for_file: unused_element, unnecessary_cast

import 'snapshot_encryption_settings_disk_encryption_key.dart';
import 'snapshot_encryption_settings_key_encryption_key.dart';

class SnapshotEncryptionSettings {
  /// A `disk_encryption_key` block as defined below.
  final SnapshotEncryptionSettingsDiskEncryptionKey diskEncryptionKey;
  /// A `key_encryption_key` block as defined below.
  final SnapshotEncryptionSettingsKeyEncryptionKey? keyEncryptionKey;

  /// Creates a new [SnapshotEncryptionSettings].
  /// [diskEncryptionKey] A `disk_encryption_key` block as defined below.
  /// [keyEncryptionKey] A `key_encryption_key` block as defined below.
  SnapshotEncryptionSettings({
    required this.diskEncryptionKey,
    this.keyEncryptionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionKey': diskEncryptionKey.toMap(),
      'keyEncryptionKey': ?keyEncryptionKey == null ? null : keyEncryptionKey!.toMap(),
    };
  }

  factory SnapshotEncryptionSettings.fromMap(Map<String, dynamic> map) {
    return SnapshotEncryptionSettings(
      diskEncryptionKey: SnapshotEncryptionSettingsDiskEncryptionKey.fromMap((map['diskEncryptionKey'] as Map).cast<String, dynamic>()),
      keyEncryptionKey: map['keyEncryptionKey'] == null ? null : SnapshotEncryptionSettingsKeyEncryptionKey.fromMap((map['keyEncryptionKey'] as Map).cast<String, dynamic>()),
    );
  }
}

