// ignore_for_file: unused_element, unnecessary_cast

class VectorsIndexEncryptionConfiguration {
  /// AWS Key Management Service (KMS) customer managed key ID to use for the encryption configuration. This parameter is allowed if and only if <span pulumi-lang-nodejs="`sseType`" pulumi-lang-dotnet="`SseType`" pulumi-lang-go="`sseType`" pulumi-lang-python="`sse_type`" pulumi-lang-yaml="`sseType`" pulumi-lang-java="`sseType`">`sse_type`</span> is set to `aws:kms`. To specify the KMS key, you must use the format of the KMS key Amazon Resource Name (ARN).
  final String kmsKeyArn;

  /// Type of encryption to use. Valid values: `AES256`, `aws:kms`. Defaults to `AES256`.
  final String sseType;

  VectorsIndexEncryptionConfiguration({
    required this.kmsKeyArn,
    required this.sseType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyArn'] = kmsKeyArn;
    map['sseType'] = sseType;
    return map;
  }

  factory VectorsIndexEncryptionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return VectorsIndexEncryptionConfiguration(
      kmsKeyArn: map['kmsKeyArn'] as String,
      sseType: map['sseType'] as String,
    );
  }
}
