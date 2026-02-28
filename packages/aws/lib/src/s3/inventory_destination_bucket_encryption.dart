// ignore_for_file: unused_element, unnecessary_cast

import 'inventory_destination_bucket_encryption_sse_kms.dart';

class InventoryDestinationBucketEncryption {
  /// Specifies to use server-side encryption with AWS KMS-managed keys to encrypt the inventory file (documented below).
  final InventoryDestinationBucketEncryptionSseKms? sseKms;
  /// Specifies to use server-side encryption with Amazon S3-managed keys (SSE-S3) to encrypt the inventory file.
  final Map<String, dynamic>? sseS3;

  /// Creates a new [InventoryDestinationBucketEncryption].
  /// [sseKms] Specifies to use server-side encryption with AWS KMS-managed keys to encrypt the inventory file (documented below).
  /// [sseS3] Specifies to use server-side encryption with Amazon S3-managed keys (SSE-S3) to encrypt the inventory file.
  InventoryDestinationBucketEncryption({
    this.sseKms,
    this.sseS3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sseKms': ?sseKms == null ? null : sseKms!.toMap(),
      'sseS3': ?sseS3,
    };
  }

  factory InventoryDestinationBucketEncryption.fromMap(Map<String, dynamic> map) {
    return InventoryDestinationBucketEncryption(
      sseKms: map['sseKms'] == null ? null : InventoryDestinationBucketEncryptionSseKms.fromMap((map['sseKms'] as Map).cast<String, dynamic>()),
      sseS3: map['sseS3'] == null ? null : (map['sseS3'] as Map).cast<String, dynamic>(),
    );
  }
}

