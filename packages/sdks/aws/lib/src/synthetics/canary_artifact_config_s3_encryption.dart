// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CanaryArtifactConfigS3Encryption {
  /// The encryption method to use for artifacts created by this canary. Valid values are: `SSE_S3` and `SSE_KMS`.
  final pulumi.Input<String>? encryptionMode;
  /// The ARN of the customer-managed KMS key to use, if you specify `SSE_KMS` for `encryption_mode`.
  final pulumi.Input<String>? kmsKeyArn;

  /// Creates a new [CanaryArtifactConfigS3Encryption].
  /// [encryptionMode] The encryption method to use for artifacts created by this canary. Valid values are: `SSE_S3` and `SSE_KMS`.
  /// [kmsKeyArn] The ARN of the customer-managed KMS key to use, if you specify `SSE_KMS` for `encryption_mode`.
  const CanaryArtifactConfigS3Encryption({
    this.encryptionMode,
    this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionMode': ?encryptionMode,
      'kmsKeyArn': ?kmsKeyArn,
    };
  }

  factory CanaryArtifactConfigS3Encryption.fromMap(Map<String, dynamic> map) {
    return CanaryArtifactConfigS3Encryption(
      encryptionMode: (() { final guardedValue = map['encryptionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

