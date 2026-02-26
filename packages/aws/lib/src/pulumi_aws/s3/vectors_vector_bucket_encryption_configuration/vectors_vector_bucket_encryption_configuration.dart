// ignore_for_file: unused_element, unnecessary_cast

class VectorsVectorBucketEncryptionConfiguration {
  /// AWS KMS CMK ARN to use for the default encryption of the vector bucket. Allowed if and only if <span pulumi-lang-nodejs="`sseType`" pulumi-lang-dotnet="`SseType`" pulumi-lang-go="`sseType`" pulumi-lang-python="`sse_type`" pulumi-lang-yaml="`sseType`" pulumi-lang-java="`sseType`">`sse_type`</span> is set to `aws:kms`.
  final String kmsKeyArn;

  /// Server-side encryption type to use for the default encryption of the vector bucket. Valid values: `AES256`, `aws:kms`.
  final String sseType;

  VectorsVectorBucketEncryptionConfiguration({
    required this.kmsKeyArn,
    required this.sseType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyArn'] = kmsKeyArn;
    map['sseType'] = sseType;
    return map;
  }

  factory VectorsVectorBucketEncryptionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return VectorsVectorBucketEncryptionConfiguration(
      kmsKeyArn: map['kmsKeyArn'] as String,
      sseType: map['sseType'] as String,
    );
  }
}
