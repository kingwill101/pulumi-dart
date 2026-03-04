// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inventory_destination_bucket_encryption_sse_kms.dart';

class InventoryDestinationBucketEncryption {
  /// Specifies to use server-side encryption with AWS KMS-managed keys to encrypt the inventory file (documented below).
  final pulumi.Input<InventoryDestinationBucketEncryptionSseKms>? sseKms;

  /// Specifies to use server-side encryption with Amazon S3-managed keys (SSE-S3) to encrypt the inventory file.
  final pulumi.Input<Map<String, dynamic>>? sseS3;

  /// Creates a new [InventoryDestinationBucketEncryption].
  /// [sseKms] Specifies to use server-side encryption with AWS KMS-managed keys to encrypt the inventory file (documented below).
  /// [sseS3] Specifies to use server-side encryption with Amazon S3-managed keys (SSE-S3) to encrypt the inventory file.
  InventoryDestinationBucketEncryption({this.sseKms, this.sseS3});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sseKms':
          ?pulumi.Input.mapOptionalInputValue<
            InventoryDestinationBucketEncryptionSseKms,
            Map<String, dynamic>
          >(sseKms, (value) => value.toMap()),
      'sseS3': ?sseS3,
    };
  }

  factory InventoryDestinationBucketEncryption.fromMap(
    Map<String, dynamic> map,
  ) {
    return InventoryDestinationBucketEncryption(
      sseKms: (() {
        final guardedValue = map['sseKms'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InventoryDestinationBucketEncryptionSseKms.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sseS3: (() {
        final guardedValue = map['sseS3'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
    );
  }
}
