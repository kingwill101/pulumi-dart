// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oss_bucket_server_side_encryption_bucket_server_side_encryption_args_doc}
/// The set of arguments for BucketServerSideEncryption.
/// {@endtemplate}
/// {@macro pulumi_oss_bucket_server_side_encryption_bucket_server_side_encryption_args_doc}
class BucketServerSideEncryptionArgs {
  /// The name of the bucket.
  final pulumi.Input<String> bucket;
  /// The algorithm used to encrypt objects. If this element is not specified, objects are encrypted by using AES256. This element is valid only when the value of SSEAlgorithm is set to KMS.
  final pulumi.Input<String>? kmsDataEncryption;
  /// The CMK ID that must be specified when SSEAlgorithm is set to KMS and a specified CMK is used for encryption. In other cases, this element must be set to null.
  final pulumi.Input<String>? kmsMasterKeyId;
  /// The server-side encryption method. Valid Values: KMS, AES256.
  final pulumi.Input<String> sseAlgorithm;

  /// Creates a new [BucketServerSideEncryptionArgs].
  /// [bucket] The name of the bucket.
  /// [kmsDataEncryption] The algorithm used to encrypt objects. If this element is not specified, objects are encrypted by using AES256. This element is valid only when the value of SSEAlgorithm is set to KMS.
  /// [kmsMasterKeyId] The CMK ID that must be specified when SSEAlgorithm is set to KMS and a specified CMK is used for encryption. In other cases, this element must be set to null.
  /// [sseAlgorithm] The server-side encryption method. Valid Values: KMS, AES256.
  BucketServerSideEncryptionArgs({
    required this.bucket,
    this.kmsDataEncryption,
    this.kmsMasterKeyId,
    required this.sseAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'kmsDataEncryption': ?kmsDataEncryption,
      'kmsMasterKeyId': ?kmsMasterKeyId,
      'sseAlgorithm': sseAlgorithm,
    };
  }

  factory BucketServerSideEncryptionArgs.fromMap(Map<String, dynamic> map) {
    return BucketServerSideEncryptionArgs(
      bucket: (map['bucket'] as String).input(),
      kmsDataEncryption: map['kmsDataEncryption'] == null ? null : (map['kmsDataEncryption'] as String).input(),
      kmsMasterKeyId: map['kmsMasterKeyId'] == null ? null : (map['kmsMasterKeyId'] as String).input(),
      sseAlgorithm: (map['sseAlgorithm'] as String).input(),
    );
  }
}

