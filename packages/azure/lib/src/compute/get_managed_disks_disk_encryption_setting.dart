// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_disks_disk_encryption_setting_disk_encryption_key.dart';
import 'get_managed_disks_disk_encryption_setting_key_encryption_key.dart';

class GetManagedDisksDiskEncryptionSetting {
  /// A `disk_encryption_key` block as defined above.
  final List<GetManagedDisksDiskEncryptionSettingDiskEncryptionKey> diskEncryptionKeys;
  final bool enabled;
  /// A `key_encryption_key` block as defined below.
  final List<GetManagedDisksDiskEncryptionSettingKeyEncryptionKey> keyEncryptionKeys;

  /// Creates a new [GetManagedDisksDiskEncryptionSetting].
  /// [diskEncryptionKeys] A `disk_encryption_key` block as defined above.
  /// [enabled] Required.
  /// [keyEncryptionKeys] A `key_encryption_key` block as defined below.
  GetManagedDisksDiskEncryptionSetting({
    required this.diskEncryptionKeys,
    required this.enabled,
    required this.keyEncryptionKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionKeys': pulumi.Input.encodeList<GetManagedDisksDiskEncryptionSettingDiskEncryptionKey, Map<String, dynamic>>(diskEncryptionKeys, (value) => value.toMap()),
      'enabled': enabled,
      'keyEncryptionKeys': pulumi.Input.encodeList<GetManagedDisksDiskEncryptionSettingKeyEncryptionKey, Map<String, dynamic>>(keyEncryptionKeys, (value) => value.toMap()),
    };
  }

  factory GetManagedDisksDiskEncryptionSetting.fromMap(Map<String, dynamic> map) {
    return GetManagedDisksDiskEncryptionSetting(
      diskEncryptionKeys: pulumi.Input.decodeList<GetManagedDisksDiskEncryptionSettingDiskEncryptionKey>(map['diskEncryptionKeys'], (value) => GetManagedDisksDiskEncryptionSettingDiskEncryptionKey.fromMap((value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] as bool,
      keyEncryptionKeys: pulumi.Input.decodeList<GetManagedDisksDiskEncryptionSettingKeyEncryptionKey>(map['keyEncryptionKeys'], (value) => GetManagedDisksDiskEncryptionSettingKeyEncryptionKey.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

