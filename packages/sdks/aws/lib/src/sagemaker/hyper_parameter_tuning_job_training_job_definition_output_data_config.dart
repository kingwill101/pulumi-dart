// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HyperParameterTuningJobTrainingJobDefinitionOutputDataConfig {
  /// Compression type for output.
  final pulumi.Input<String?>? compressionType;
  /// KMS key ID for output encryption.
  final pulumi.Input<String?>? kmsKeyId;
  /// S3 or HTTPS output path.
  final pulumi.Input<String> s3OutputPath;

  /// Creates a new [HyperParameterTuningJobTrainingJobDefinitionOutputDataConfig].
  /// [compressionType] Compression type for output.
  /// [kmsKeyId] KMS key ID for output encryption.
  /// [s3OutputPath] S3 or HTTPS output path.
  const HyperParameterTuningJobTrainingJobDefinitionOutputDataConfig({
    this.compressionType,
    this.kmsKeyId,
    required this.s3OutputPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionType': ?compressionType,
      'kmsKeyId': ?kmsKeyId,
      's3OutputPath': s3OutputPath,
    };
  }

  factory HyperParameterTuningJobTrainingJobDefinitionOutputDataConfig.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobTrainingJobDefinitionOutputDataConfig(
      compressionType: (() { final guardedValue = map['compressionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3OutputPath: pulumi.Input.fromValue(map['s3OutputPath'] as String),
    );
  }
}
