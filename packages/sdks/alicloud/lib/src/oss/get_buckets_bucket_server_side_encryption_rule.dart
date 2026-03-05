// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketsBucketServerSideEncryptionRule {
  /// The alibaba cloud KMS master key ID used for the SSE-KMS encryption.
  final pulumi.Input<String> kmsMasterKeyId;
  /// The server-side encryption algorithm to use.
  final pulumi.Input<String> sseAlgorithm;

  /// Creates a new [GetBucketsBucketServerSideEncryptionRule].
  /// [kmsMasterKeyId] The alibaba cloud KMS master key ID used for the SSE-KMS encryption.
  /// [sseAlgorithm] The server-side encryption algorithm to use.
  GetBucketsBucketServerSideEncryptionRule({
    required this.kmsMasterKeyId,
    required this.sseAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsMasterKeyId': kmsMasterKeyId,
      'sseAlgorithm': sseAlgorithm,
    };
  }

  factory GetBucketsBucketServerSideEncryptionRule.fromMap(Map<String, dynamic> map) {
    return GetBucketsBucketServerSideEncryptionRule(
      kmsMasterKeyId: pulumi.Input.fromValue(map['kmsMasterKeyId'] as String),
      sseAlgorithm: pulumi.Input.fromValue(map['sseAlgorithm'] as String),
    );
  }
}

