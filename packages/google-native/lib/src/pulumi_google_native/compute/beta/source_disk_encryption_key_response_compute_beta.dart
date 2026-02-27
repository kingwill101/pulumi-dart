// ignore_for_file: unused_element, unnecessary_cast

import 'customer_encryption_key_response_compute_beta.dart';

class SourceDiskEncryptionKeyResponseComputeBeta {
  /// The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.
  final CustomerEncryptionKeyResponseComputeBeta diskEncryptionKey;

  /// URL of the disk attached to the source instance. This can be a full or valid partial URL. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - projects/project/zones/zone/disks/disk - zones/zone/disks/disk
  final String sourceDisk;

  SourceDiskEncryptionKeyResponseComputeBeta({
    required this.diskEncryptionKey,
    required this.sourceDisk,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['diskEncryptionKey'] = diskEncryptionKey.toMap();
    map['sourceDisk'] = sourceDisk;
    return map;
  }

  factory SourceDiskEncryptionKeyResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return SourceDiskEncryptionKeyResponseComputeBeta(
      diskEncryptionKey: CustomerEncryptionKeyResponseComputeBeta.fromMap(
          (map['diskEncryptionKey'] as Map).cast<String, dynamic>()),
      sourceDisk: map['sourceDisk'] as String,
    );
  }
}
