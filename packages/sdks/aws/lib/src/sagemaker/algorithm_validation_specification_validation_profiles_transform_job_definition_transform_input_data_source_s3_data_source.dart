// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputDataSourceS3DataSource {
  final pulumi.Input<String> s3DataType;
  final pulumi.Input<String> s3Uri;

  /// Creates a new [AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputDataSourceS3DataSource].
  /// [s3DataType] Required.
  /// [s3Uri] Required.
  const AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputDataSourceS3DataSource({
    required this.s3DataType,
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3DataType': s3DataType,
      's3Uri': s3Uri,
    };
  }

  factory AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputDataSourceS3DataSource.fromMap(Map<String, dynamic> map) {
    return AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputDataSourceS3DataSource(
      s3DataType: pulumi.Input.fromValue(map['s3DataType'] as String),
      s3Uri: pulumi.Input.fromValue(map['s3Uri'] as String),
    );
  }
}
