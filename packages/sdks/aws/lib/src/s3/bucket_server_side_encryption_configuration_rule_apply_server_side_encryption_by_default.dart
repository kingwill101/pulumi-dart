// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefault {
  /// AWS KMS master key ID used for the SSE-KMS encryption. This can only be used when you set the value of `sse_algorithm` as `aws:kms`. The default `aws/s3` AWS KMS master key is used if this element is absent while the `sse_algorithm` is `aws:kms`.
  final pulumi.Input<String>? kmsMasterKeyId;

  /// Server-side encryption algorithm to use. Valid values are `AES256`, `aws:kms`, and `aws:kms:dsse`
  final pulumi.Input<String> sseAlgorithm;

  /// Creates a new [BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefault].
  /// [kmsMasterKeyId] AWS KMS master key ID used for the SSE-KMS encryption. This can only be used when you set the value of `sse_algorithm` as `aws:kms`. The default `aws/s3` AWS KMS master key is used if this element is absent while the `sse_algorithm` is `aws:kms`.
  /// [sseAlgorithm] Server-side encryption algorithm to use. Valid values are `AES256`, `aws:kms`, and `aws:kms:dsse`
  BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefault({
    this.kmsMasterKeyId,
    required this.sseAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsMasterKeyId': ?kmsMasterKeyId,
      'sseAlgorithm': sseAlgorithm,
    };
  }

  factory BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefault.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefault(
      kmsMasterKeyId: (() {
        final guardedValue = map['kmsMasterKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sseAlgorithm: pulumi.Input.fromValue(map['sseAlgorithm'] as String),
    );
  }
}
