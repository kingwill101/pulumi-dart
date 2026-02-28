// ignore_for_file: unused_element, unnecessary_cast

class SecurityConfigurationEncryptionConfigurationS3Encryption {
  /// Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.
  final String? kmsKeyArn;

  /// Encryption mode to use for S3 data. Valid values: `DISABLED`, `SSE-KMS`, `SSE-S3`. Default value: `DISABLED`.
  final String? s3EncryptionMode;

  /// Creates a new [SecurityConfigurationEncryptionConfigurationS3Encryption].
  /// [kmsKeyArn] Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.
  /// [s3EncryptionMode] Encryption mode to use for S3 data. Valid values: `DISABLED`, `SSE-KMS`, `SSE-S3`. Default value: `DISABLED`.
  SecurityConfigurationEncryptionConfigurationS3Encryption({
    this.kmsKeyArn,
    this.s3EncryptionMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    final s3EncryptionModeValue = s3EncryptionMode;
    if (s3EncryptionModeValue != null) {
      map['s3EncryptionMode'] = s3EncryptionModeValue;
    }
    return map;
  }

  factory SecurityConfigurationEncryptionConfigurationS3Encryption.fromMap(
      Map<String, dynamic> map) {
    return SecurityConfigurationEncryptionConfigurationS3Encryption(
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
      s3EncryptionMode: map['s3EncryptionMode'] == null
          ? null
          : map['s3EncryptionMode'] as String,
    );
  }
}
