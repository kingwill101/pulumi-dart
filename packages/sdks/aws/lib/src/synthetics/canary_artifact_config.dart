// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'canary_artifact_config_s3_encryption.dart';

class CanaryArtifactConfig {
  /// Configuration of the encryption-at-rest settings for artifacts that the canary uploads to Amazon S3. See S3 Encryption.
  final pulumi.Input<CanaryArtifactConfigS3Encryption>? s3Encryption;

  /// Creates a new [CanaryArtifactConfig].
  /// [s3Encryption] Configuration of the encryption-at-rest settings for artifacts that the canary uploads to Amazon S3. See S3 Encryption.
  CanaryArtifactConfig({
    this.s3Encryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Encryption': ?pulumi.Input.mapOptionalInputValue<CanaryArtifactConfigS3Encryption, Map<String, dynamic>>(s3Encryption, (value) => value.toMap()),
    };
  }

  factory CanaryArtifactConfig.fromMap(Map<String, dynamic> map) {
    return CanaryArtifactConfig(
      s3Encryption: map['s3Encryption'] == null ? null : (CanaryArtifactConfigS3Encryption.fromMap((map['s3Encryption'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

