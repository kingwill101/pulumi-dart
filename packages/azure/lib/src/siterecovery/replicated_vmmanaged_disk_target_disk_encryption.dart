// ignore_for_file: unused_element, unnecessary_cast

import 'replicated_vmmanaged_disk_target_disk_encryption_disk_encryption_key.dart';
import 'replicated_vmmanaged_disk_target_disk_encryption_key_encryption_key.dart';

class ReplicatedVMManagedDiskTargetDiskEncryption {
  /// A `disk_encryption_key` block as defined below.
  final ReplicatedVMManagedDiskTargetDiskEncryptionDiskEncryptionKey diskEncryptionKey;
  /// A `key_encryption_key` block as defined below.
  final ReplicatedVMManagedDiskTargetDiskEncryptionKeyEncryptionKey? keyEncryptionKey;

  /// Creates a new [ReplicatedVMManagedDiskTargetDiskEncryption].
  /// [diskEncryptionKey] A `disk_encryption_key` block as defined below.
  /// [keyEncryptionKey] A `key_encryption_key` block as defined below.
  ReplicatedVMManagedDiskTargetDiskEncryption({
    required this.diskEncryptionKey,
    this.keyEncryptionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionKey': diskEncryptionKey.toMap(),
      'keyEncryptionKey': ?keyEncryptionKey == null ? null : keyEncryptionKey!.toMap(),
    };
  }

  factory ReplicatedVMManagedDiskTargetDiskEncryption.fromMap(Map<String, dynamic> map) {
    return ReplicatedVMManagedDiskTargetDiskEncryption(
      diskEncryptionKey: ReplicatedVMManagedDiskTargetDiskEncryptionDiskEncryptionKey.fromMap((map['diskEncryptionKey'] as Map).cast<String, dynamic>()),
      keyEncryptionKey: map['keyEncryptionKey'] == null ? null : ReplicatedVMManagedDiskTargetDiskEncryptionKeyEncryptionKey.fromMap((map['keyEncryptionKey'] as Map).cast<String, dynamic>()),
    );
  }
}

