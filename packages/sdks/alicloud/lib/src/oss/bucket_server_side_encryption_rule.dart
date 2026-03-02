// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketServerSideEncryptionRule {
  /// The algorithm used to encrypt objects. If this element is not specified, objects are encrypted with AES256. This element is valid only when the value of SSEAlgorithm is set to KMS. Valid values: `SM4`.
  final pulumi.Input<String>? kmsDataEncryption;
  /// The alibaba cloud KMS master key ID used for the SSE-KMS encryption.
  final pulumi.Input<String>? kmsMasterKeyId;
  /// The server-side encryption algorithm to use. Possible values: `AES256` and `KMS`.
  final pulumi.Input<String> sseAlgorithm;

  /// Creates a new [BucketServerSideEncryptionRule].
  /// [kmsDataEncryption] The algorithm used to encrypt objects. If this element is not specified, objects are encrypted with AES256. This element is valid only when the value of SSEAlgorithm is set to KMS. Valid values: `SM4`.
  /// [kmsMasterKeyId] The alibaba cloud KMS master key ID used for the SSE-KMS encryption.
  /// [sseAlgorithm] The server-side encryption algorithm to use. Possible values: `AES256` and `KMS`.
  BucketServerSideEncryptionRule({
    this.kmsDataEncryption,
    this.kmsMasterKeyId,
    required this.sseAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsDataEncryption': ?kmsDataEncryption,
      'kmsMasterKeyId': ?kmsMasterKeyId,
      'sseAlgorithm': sseAlgorithm,
    };
  }

  factory BucketServerSideEncryptionRule.fromMap(Map<String, dynamic> map) {
    return BucketServerSideEncryptionRule(
      kmsDataEncryption: map['kmsDataEncryption'] == null ? null : (map['kmsDataEncryption'] as String).input(),
      kmsMasterKeyId: map['kmsMasterKeyId'] == null ? null : (map['kmsMasterKeyId'] as String).input(),
      sseAlgorithm: (map['sseAlgorithm'] as String).input(),
    );
  }
}

