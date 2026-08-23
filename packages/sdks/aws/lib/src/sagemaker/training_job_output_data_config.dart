// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrainingJobOutputDataConfig {
  /// Output compression type. Valid values: `GZIP`, `NONE`.
  final pulumi.Input<String>? compressionType;
  /// KMS key ID used to encrypt the output data.
  final pulumi.Input<String>? kmsKeyId;
  /// S3 URI where output data is stored.
  final pulumi.Input<String> s3OutputPath;

  /// Creates a new [TrainingJobOutputDataConfig].
  /// [compressionType] Output compression type. Valid values: `GZIP`, `NONE`.
  /// [kmsKeyId] KMS key ID used to encrypt the output data.
  /// [s3OutputPath] S3 URI where output data is stored.
  const TrainingJobOutputDataConfig({
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

  factory TrainingJobOutputDataConfig.fromMap(Map<String, dynamic> map) {
    return TrainingJobOutputDataConfig(
      compressionType: (() { final guardedValue = map['compressionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3OutputPath: pulumi.Input.fromValue(map['s3OutputPath'] as String),
    );
  }
}
