// ignore_for_file: unused_element, unnecessary_cast

class VectorsIndexEncryptionConfiguration {
  /// AWS Key Management Service (KMS) customer managed key ID to use for the encryption configuration. This parameter is allowed if and only if `sse_type` is set to `aws:kms`. To specify the KMS key, you must use the format of the KMS key Amazon Resource Name (ARN).
  final String kmsKeyArn;

  /// Type of encryption to use. Valid values: `AES256`, `aws:kms`. Defaults to `AES256`.
  final String sseType;

  /// Creates a new [VectorsIndexEncryptionConfiguration].
  /// [kmsKeyArn] AWS Key Management Service (KMS) customer managed key ID to use for the encryption configuration. This parameter is allowed if and only if `sse_type` is set to `aws:kms`. To specify the KMS key, you must use the format of the KMS key Amazon Resource Name (ARN).
  /// [sseType] Type of encryption to use. Valid values: `AES256`, `aws:kms`. Defaults to `AES256`.
  VectorsIndexEncryptionConfiguration({
    required this.kmsKeyArn,
    required this.sseType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKeyArn': kmsKeyArn, 'sseType': sseType};
  }

  factory VectorsIndexEncryptionConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return VectorsIndexEncryptionConfiguration(
      kmsKeyArn: map['kmsKeyArn'] as String,
      sseType: map['sseType'] as String,
    );
  }
}
