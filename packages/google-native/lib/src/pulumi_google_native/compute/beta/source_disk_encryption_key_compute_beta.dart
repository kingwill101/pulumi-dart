// ignore_for_file: unused_element, unnecessary_cast

import 'customer_encryption_key_compute_beta.dart';

class SourceDiskEncryptionKeyComputeBeta {
  /// The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.
  final CustomerEncryptionKeyComputeBeta? diskEncryptionKey;

  /// URL of the disk attached to the source instance. This can be a full or valid partial URL. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - projects/project/zones/zone/disks/disk - zones/zone/disks/disk
  final String? sourceDisk;

  SourceDiskEncryptionKeyComputeBeta({
    this.diskEncryptionKey,
    this.sourceDisk,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final diskEncryptionKeyValue = diskEncryptionKey;
    if (diskEncryptionKeyValue != null) {
      map['diskEncryptionKey'] = diskEncryptionKeyValue.toMap();
    }
    final sourceDiskValue = sourceDisk;
    if (sourceDiskValue != null) {
      map['sourceDisk'] = sourceDiskValue;
    }
    return map;
  }

  factory SourceDiskEncryptionKeyComputeBeta.fromMap(Map<String, dynamic> map) {
    return SourceDiskEncryptionKeyComputeBeta(
      diskEncryptionKey: map['diskEncryptionKey'] == null
          ? null
          : CustomerEncryptionKeyComputeBeta.fromMap(
              (map['diskEncryptionKey'] as Map).cast<String, dynamic>()),
      sourceDisk:
          map['sourceDisk'] == null ? null : map['sourceDisk'] as String,
    );
  }
}
