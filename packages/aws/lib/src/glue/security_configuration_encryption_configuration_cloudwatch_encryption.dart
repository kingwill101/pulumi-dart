// ignore_for_file: unused_element, unnecessary_cast

class SecurityConfigurationEncryptionConfigurationCloudwatchEncryption {
  /// Encryption mode to use for CloudWatch data. Valid values: `DISABLED`, `SSE-KMS`. Default value: `DISABLED`.
  final String? cloudwatchEncryptionMode;

  /// Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.
  final String? kmsKeyArn;

  /// Creates a new [SecurityConfigurationEncryptionConfigurationCloudwatchEncryption].
  /// [cloudwatchEncryptionMode] Encryption mode to use for CloudWatch data. Valid values: `DISABLED`, `SSE-KMS`. Default value: `DISABLED`.
  /// [kmsKeyArn] Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.
  SecurityConfigurationEncryptionConfigurationCloudwatchEncryption({
    this.cloudwatchEncryptionMode,
    this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudwatchEncryptionModeValue = cloudwatchEncryptionMode;
    if (cloudwatchEncryptionModeValue != null) {
      map['cloudwatchEncryptionMode'] = cloudwatchEncryptionModeValue;
    }
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    return map;
  }

  factory SecurityConfigurationEncryptionConfigurationCloudwatchEncryption.fromMap(
      Map<String, dynamic> map) {
    return SecurityConfigurationEncryptionConfigurationCloudwatchEncryption(
      cloudwatchEncryptionMode: map['cloudwatchEncryptionMode'] == null
          ? null
          : map['cloudwatchEncryptionMode'] as String,
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
    );
  }
}
