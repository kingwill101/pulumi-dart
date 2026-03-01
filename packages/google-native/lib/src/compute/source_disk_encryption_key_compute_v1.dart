// ignore_for_file: unused_element, unnecessary_cast

import 'customer_encryption_key_compute_v1.dart';

class SourceDiskEncryptionKeyComputeV1 {
  /// The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.
  final CustomerEncryptionKeyComputeV1? diskEncryptionKey;

  /// URL of the disk attached to the source instance. This can be a full or valid partial URL. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - projects/project/zones/zone/disks/disk - zones/zone/disks/disk
  final String? sourceDisk;

  /// Creates a new [SourceDiskEncryptionKeyComputeV1].
  /// [diskEncryptionKey] The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.
  /// [sourceDisk] URL of the disk attached to the source instance. This can be a full or valid partial URL. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - projects/project/zones/zone/disks/disk - zones/zone/disks/disk
  SourceDiskEncryptionKeyComputeV1({this.diskEncryptionKey, this.sourceDisk});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionKey': ?diskEncryptionKey == null
          ? null
          : diskEncryptionKey!.toMap(),
      'sourceDisk': ?sourceDisk,
    };
  }

  factory SourceDiskEncryptionKeyComputeV1.fromMap(Map<String, dynamic> map) {
    return SourceDiskEncryptionKeyComputeV1(
      diskEncryptionKey: map['diskEncryptionKey'] == null
          ? null
          : CustomerEncryptionKeyComputeV1.fromMap(
              (map['diskEncryptionKey'] as Map).cast<String, dynamic>(),
            ),
      sourceDisk: map['sourceDisk'] == null
          ? null
          : map['sourceDisk'] as String,
    );
  }
}
