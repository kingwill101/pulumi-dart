// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VectorsIndexEncryptionConfiguration {
  /// AWS Key Management Service (KMS) customer managed key ID to use for the encryption configuration. This parameter is allowed if and only if `sse_type` is set to `aws:kms`. To specify the KMS key, you must use the format of the KMS key Amazon Resource Name (ARN).
  final pulumi.Input<String> kmsKeyArn;
  /// Type of encryption to use. Valid values: `AES256`, `aws:kms`. Defaults to `AES256`.
  final pulumi.Input<String> sseType;

  /// Creates a new [VectorsIndexEncryptionConfiguration].
  /// [kmsKeyArn] AWS Key Management Service (KMS) customer managed key ID to use for the encryption configuration. This parameter is allowed if and only if `sse_type` is set to `aws:kms`. To specify the KMS key, you must use the format of the KMS key Amazon Resource Name (ARN).
  /// [sseType] Type of encryption to use. Valid values: `AES256`, `aws:kms`. Defaults to `AES256`.
  VectorsIndexEncryptionConfiguration({
    required this.kmsKeyArn,
    required this.sseType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyArn': kmsKeyArn,
      'sseType': sseType,
    };
  }

  factory VectorsIndexEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return VectorsIndexEncryptionConfiguration(
      kmsKeyArn: pulumi.Input.fromValue(map['kmsKeyArn'] as String),
      sseType: pulumi.Input.fromValue(map['sseType'] as String),
    );
  }
}

