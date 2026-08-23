// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class S3TableIntegrationEncryption {
  /// ARN of the KMS key to use for encryption. Required when `sseAlgorithm` is `aws:kms`.
  final pulumi.Input<String>? kmsKeyArn;
  /// Server-side encryption algorithm. Valid values: `AES256`, `aws:kms`.
  final pulumi.Input<String> sseAlgorithm;

  /// Creates a new [S3TableIntegrationEncryption].
  /// [kmsKeyArn] ARN of the KMS key to use for encryption. Required when `sseAlgorithm` is `aws:kms`.
  /// [sseAlgorithm] Server-side encryption algorithm. Valid values: `AES256`, `aws:kms`.
  const S3TableIntegrationEncryption({
    this.kmsKeyArn,
    required this.sseAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyArn': ?kmsKeyArn,
      'sseAlgorithm': sseAlgorithm,
    };
  }

  factory S3TableIntegrationEncryption.fromMap(Map<String, dynamic> map) {
    return S3TableIntegrationEncryption(
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sseAlgorithm: pulumi.Input.fromValue(map['sseAlgorithm'] as String),
    );
  }
}
