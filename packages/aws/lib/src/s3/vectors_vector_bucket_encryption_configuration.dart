// ignore_for_file: unused_element, unnecessary_cast

class VectorsVectorBucketEncryptionConfiguration {
  /// AWS KMS CMK ARN to use for the default encryption of the vector bucket. Allowed if and only if `sse_type` is set to `aws:kms`.
  final String kmsKeyArn;

  /// Server-side encryption type to use for the default encryption of the vector bucket. Valid values: `AES256`, `aws:kms`.
  final String sseType;

  /// Creates a new [VectorsVectorBucketEncryptionConfiguration].
  /// [kmsKeyArn] AWS KMS CMK ARN to use for the default encryption of the vector bucket. Allowed if and only if `sse_type` is set to `aws:kms`.
  /// [sseType] Server-side encryption type to use for the default encryption of the vector bucket. Valid values: `AES256`, `aws:kms`.
  VectorsVectorBucketEncryptionConfiguration({
    required this.kmsKeyArn,
    required this.sseType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKeyArn': kmsKeyArn, 'sseType': sseType};
  }

  factory VectorsVectorBucketEncryptionConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return VectorsVectorBucketEncryptionConfiguration(
      kmsKeyArn: map['kmsKeyArn'] as String,
      sseType: map['sseType'] as String,
    );
  }
}
