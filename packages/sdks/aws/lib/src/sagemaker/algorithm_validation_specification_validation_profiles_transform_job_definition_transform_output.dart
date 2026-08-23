// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformOutput {
  /// MIME type of the transform output.
  final pulumi.Input<String>? accept;
  /// Method used to assemble the transform output. Allowed values are: `None` and `Line`.
  final pulumi.Input<String>? assembleWith;
  /// KMS key ID used to encrypt transform output.
  final pulumi.Input<String>? kmsKeyId;
  /// S3 or HTTPS URI where transform output is stored.
  final pulumi.Input<String> s3OutputPath;

  /// Creates a new [AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformOutput].
  /// [accept] MIME type of the transform output.
  /// [assembleWith] Method used to assemble the transform output. Allowed values are: `None` and `Line`.
  /// [kmsKeyId] KMS key ID used to encrypt transform output.
  /// [s3OutputPath] S3 or HTTPS URI where transform output is stored.
  const AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformOutput({
    this.accept,
    this.assembleWith,
    this.kmsKeyId,
    required this.s3OutputPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accept': ?accept,
      'assembleWith': ?assembleWith,
      'kmsKeyId': ?kmsKeyId,
      's3OutputPath': s3OutputPath,
    };
  }

  factory AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformOutput.fromMap(Map<String, dynamic> map) {
    return AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformOutput(
      accept: (() { final guardedValue = map['accept']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      assembleWith: (() { final guardedValue = map['assembleWith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3OutputPath: pulumi.Input.fromValue(map['s3OutputPath'] as String),
    );
  }
}
