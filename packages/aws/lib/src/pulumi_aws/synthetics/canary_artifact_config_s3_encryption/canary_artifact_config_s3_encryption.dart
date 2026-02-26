// ignore_for_file: unused_element, unnecessary_cast

class CanaryArtifactConfigS3Encryption {
  /// The encryption method to use for artifacts created by this canary. Valid values are: `SSE_S3` and `SSE_KMS`.
  final String? encryptionMode;

  /// The ARN of the customer-managed KMS key to use, if you specify `SSE_KMS` for <span pulumi-lang-nodejs="`encryptionMode`" pulumi-lang-dotnet="`EncryptionMode`" pulumi-lang-go="`encryptionMode`" pulumi-lang-python="`encryption_mode`" pulumi-lang-yaml="`encryptionMode`" pulumi-lang-java="`encryptionMode`">`encryption_mode`</span>.
  final String? kmsKeyArn;

  CanaryArtifactConfigS3Encryption({
    this.encryptionMode,
    this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encryptionModeValue = encryptionMode;
    if (encryptionModeValue != null) {
      map['encryptionMode'] = encryptionModeValue;
    }
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    return map;
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
