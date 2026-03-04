// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BucketServerSideEncryption resources.
class BucketServerSideEncryptionState {
  /// The name of the bucket.
  final pulumi.Input<String>? bucket;

  /// The algorithm used to encrypt objects. If this element is not specified, objects are encrypted by using AES256. This element is valid only when the value of SSEAlgorithm is set to KMS.
  final pulumi.Input<String>? kmsDataEncryption;

  /// The CMK ID that must be specified when SSEAlgorithm is set to KMS and a specified CMK is used for encryption. In other cases, this element must be set to null.
  final pulumi.Input<String>? kmsMasterKeyId;

  /// The server-side encryption method. Valid Values: KMS, AES256.
  final pulumi.Input<String>? sseAlgorithm;

  /// Creates a new [BucketServerSideEncryptionState].
  /// [bucket] The name of the bucket.
  /// [kmsDataEncryption] The algorithm used to encrypt objects. If this element is not specified, objects are encrypted by using AES256. This element is valid only when the value of SSEAlgorithm is set to KMS.
  /// [kmsMasterKeyId] The CMK ID that must be specified when SSEAlgorithm is set to KMS and a specified CMK is used for encryption. In other cases, this element must be set to null.
  /// [sseAlgorithm] The server-side encryption method. Valid Values: KMS, AES256.
  BucketServerSideEncryptionState({
    this.bucket,
    this.kmsDataEncryption,
    this.kmsMasterKeyId,
    this.sseAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'kmsDataEncryption': ?kmsDataEncryption,
      'kmsMasterKeyId': ?kmsMasterKeyId,
      'sseAlgorithm': ?sseAlgorithm,
    };
  }

  factory BucketServerSideEncryptionState.fromMap(Map<String, dynamic> map) {
    return BucketServerSideEncryptionState(
      bucket: (() {
        final guardedValue = map['bucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsDataEncryption: (() {
        final guardedValue = map['kmsDataEncryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsMasterKeyId: (() {
        final guardedValue = map['kmsMasterKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sseAlgorithm: (() {
        final guardedValue = map['sseAlgorithm'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
