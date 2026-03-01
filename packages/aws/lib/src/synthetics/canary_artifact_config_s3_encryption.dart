// ignore_for_file: unused_element, unnecessary_cast

class CanaryArtifactConfigS3Encryption {
  /// The encryption method to use for artifacts created by this canary. Valid values are: `SSE_S3` and `SSE_KMS`.
  final String? encryptionMode;

  /// The ARN of the customer-managed KMS key to use, if you specify `SSE_KMS` for `encryption_mode`.
  final String? kmsKeyArn;

  /// Creates a new [CanaryArtifactConfigS3Encryption].
  /// [encryptionMode] The encryption method to use for artifacts created by this canary. Valid values are: `SSE_S3` and `SSE_KMS`.
  /// [kmsKeyArn] The ARN of the customer-managed KMS key to use, if you specify `SSE_KMS` for `encryption_mode`.
  CanaryArtifactConfigS3Encryption({this.encryptionMode, this.kmsKeyArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionMode': ?encryptionMode,
      'kmsKeyArn': ?kmsKeyArn,
    };
  }

  factory CanaryArtifactConfigS3Encryption.fromMap(Map<String, dynamic> map) {
    return CanaryArtifactConfigS3Encryption(
      encryptionMode: map['encryptionMode'] == null
          ? null
          : map['encryptionMode'] as String,
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
    );
  }
}
