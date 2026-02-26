// ignore_for_file: unused_element, unnecessary_cast

import '../canary_artifact_config_s3_encryption/canary_artifact_config_s3_encryption.dart';

class CanaryArtifactConfig {
  /// Configuration of the encryption-at-rest settings for artifacts that the canary uploads to Amazon S3. See S3 Encryption.
  final CanaryArtifactConfigS3Encryption? s3Encryption;

  CanaryArtifactConfig({
    this.s3Encryption,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final s3EncryptionValue = s3Encryption;
    if (s3EncryptionValue != null) {
      map['s3Encryption'] = s3EncryptionValue.toMap();
    }
    return map;
  }

  factory CanaryArtifactConfig.fromMap(Map<String, dynamic> map) {
    return CanaryArtifactConfig(
      s3Encryption: map['s3Encryption'] == null
          ? null
          : CanaryArtifactConfigS3Encryption.fromMap(
              (map['s3Encryption'] as Map).cast<String, dynamic>()),
    );
  }
}
