// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionOutputDataConfig {
  /// Compression type for the output data. Allowed values are: `None` and `GZIP`.
  final pulumi.Input<String?>? compressionType;
  /// KMS key ID used to encrypt output data.
  final pulumi.Input<String?>? kmsKeyId;
  /// S3 or HTTPS URI where output data is stored.
  final pulumi.Input<String> s3OutputPath;

  /// Creates a new [AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionOutputDataConfig].
  /// [compressionType] Compression type for the output data. Allowed values are: `None` and `GZIP`.
  /// [kmsKeyId] KMS key ID used to encrypt output data.
  /// [s3OutputPath] S3 or HTTPS URI where output data is stored.
  const AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionOutputDataConfig({
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

  factory AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionOutputDataConfig.fromMap(Map<String, dynamic> map) {
    return AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionOutputDataConfig(
      compressionType: (() { final guardedValue = map['compressionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3OutputPath: pulumi.Input.fromValue(map['s3OutputPath'] as String),
    );
  }
}
