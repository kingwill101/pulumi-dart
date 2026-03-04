// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityConfigurationEncryptionConfigurationCloudwatchEncryption {
  /// Encryption mode to use for CloudWatch data. Valid values: `DISABLED`, `SSE-KMS`. Default value: `DISABLED`.
  final pulumi.Input<String>? cloudwatchEncryptionMode;

  /// Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.
  final pulumi.Input<String>? kmsKeyArn;

  /// Creates a new [SecurityConfigurationEncryptionConfigurationCloudwatchEncryption].
  /// [cloudwatchEncryptionMode] Encryption mode to use for CloudWatch data. Valid values: `DISABLED`, `SSE-KMS`. Default value: `DISABLED`.
  /// [kmsKeyArn] Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.
  SecurityConfigurationEncryptionConfigurationCloudwatchEncryption({
    this.cloudwatchEncryptionMode,
    this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchEncryptionMode': ?cloudwatchEncryptionMode,
      'kmsKeyArn': ?kmsKeyArn,
    };
  }

  factory SecurityConfigurationEncryptionConfigurationCloudwatchEncryption.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityConfigurationEncryptionConfigurationCloudwatchEncryption(
      cloudwatchEncryptionMode: (() {
        final guardedValue = map['cloudwatchEncryptionMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsKeyArn: (() {
        final guardedValue = map['kmsKeyArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
