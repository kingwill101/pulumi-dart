// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityConfigurationEncryptionConfigurationS3Encryption {
  /// Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.
  final pulumi.Input<String>? kmsKeyArn;
  /// Encryption mode to use for S3 data. Valid values: `DISABLED`, `SSE-KMS`, `SSE-S3`. Default value: `DISABLED`.
  final pulumi.Input<String>? s3EncryptionMode;

  /// Creates a new [SecurityConfigurationEncryptionConfigurationS3Encryption].
  /// [kmsKeyArn] Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.
  /// [s3EncryptionMode] Encryption mode to use for S3 data. Valid values: `DISABLED`, `SSE-KMS`, `SSE-S3`. Default value: `DISABLED`.
  const SecurityConfigurationEncryptionConfigurationS3Encryption({
    this.kmsKeyArn,
    this.s3EncryptionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyArn': ?kmsKeyArn,
      's3EncryptionMode': ?s3EncryptionMode,
    };
  }

  factory SecurityConfigurationEncryptionConfigurationS3Encryption.fromMap(Map<String, dynamic> map) {
    return SecurityConfigurationEncryptionConfigurationS3Encryption(
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3EncryptionMode: (() { final guardedValue = map['s3EncryptionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
