// ignore_for_file: unused_element, unnecessary_cast

class BucketV2ServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefault {
  /// AWS KMS master key ID used for the SSE-KMS encryption. This can only be used when you set the value of <span pulumi-lang-nodejs="`sseAlgorithm`" pulumi-lang-dotnet="`SseAlgorithm`" pulumi-lang-go="`sseAlgorithm`" pulumi-lang-python="`sse_algorithm`" pulumi-lang-yaml="`sseAlgorithm`" pulumi-lang-java="`sseAlgorithm`">`sse_algorithm`</span> as `aws:kms`. The default `aws/s3` AWS KMS master key is used if this element is absent while the <span pulumi-lang-nodejs="`sseAlgorithm`" pulumi-lang-dotnet="`SseAlgorithm`" pulumi-lang-go="`sseAlgorithm`" pulumi-lang-python="`sse_algorithm`" pulumi-lang-yaml="`sseAlgorithm`" pulumi-lang-java="`sseAlgorithm`">`sse_algorithm`</span> is `aws:kms`.
  final String? kmsMasterKeyId;

  /// Server-side encryption algorithm to use. Valid values are `AES256` and `aws:kms`
  final String sseAlgorithm;

  BucketV2ServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefault({
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

  factory BucketV2ServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefault.fromMap(
      Map<String, dynamic> map) {
    return BucketV2ServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefault(
      kmsMasterKeyId: map['kmsMasterKeyId'] == null
          ? null
          : map['kmsMasterKeyId'] as String,
      sseAlgorithm: map['sseAlgorithm'] as String,
    );
  }
}
