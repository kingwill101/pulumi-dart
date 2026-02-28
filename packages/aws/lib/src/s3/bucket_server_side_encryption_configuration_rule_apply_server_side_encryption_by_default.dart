// ignore_for_file: unused_element, unnecessary_cast

class BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefault {
  /// AWS KMS master key ID used for the SSE-KMS encryption. This can only be used when you set the value of `sse_algorithm` as `aws:kms`. The default `aws/s3` AWS KMS master key is used if this element is absent while the `sse_algorithm` is `aws:kms`.
  final String? kmsMasterKeyId;

  /// Server-side encryption algorithm to use. Valid values are `AES256`, `aws:kms`, and `aws:kms:dsse`
  final String sseAlgorithm;

  /// Creates a new [BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefault].
  /// [kmsMasterKeyId] AWS KMS master key ID used for the SSE-KMS encryption. This can only be used when you set the value of `sse_algorithm` as `aws:kms`. The default `aws/s3` AWS KMS master key is used if this element is absent while the `sse_algorithm` is `aws:kms`.
  /// [sseAlgorithm] Server-side encryption algorithm to use. Valid values are `AES256`, `aws:kms`, and `aws:kms:dsse`
  BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefault({
    this.kmsMasterKeyId,
    required this.sseAlgorithm,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsMasterKeyIdValue = kmsMasterKeyId;
    if (kmsMasterKeyIdValue != null) {
      map['kmsMasterKeyId'] = kmsMasterKeyIdValue;
    }
    map['sseAlgorithm'] = sseAlgorithm;
    return map;
  }

  factory BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefault.fromMap(
      Map<String, dynamic> map) {
    return BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefault(
      kmsMasterKeyId: map['kmsMasterKeyId'] == null
          ? null
          : map['kmsMasterKeyId'] as String,
      sseAlgorithm: map['sseAlgorithm'] as String,
    );
  }
}
