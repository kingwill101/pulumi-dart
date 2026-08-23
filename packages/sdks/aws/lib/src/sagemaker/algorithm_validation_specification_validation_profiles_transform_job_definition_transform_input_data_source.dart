// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'algorithm_validation_specification_validation_profiles_transform_job_definition_transform_input_data_source_s3_data_source.dart';

class AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputDataSource {
  /// S3-backed training data source. See Training S3 Data Source.
  final pulumi.Input<AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputDataSourceS3DataSource> s3DataSource;

  /// Creates a new [AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputDataSource].
  /// [s3DataSource] S3-backed training data source. See Training S3 Data Source.
  const AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputDataSource({
    required this.s3DataSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3DataSource': pulumi.Input.mapInputValue<AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputDataSourceS3DataSource, Map<String, dynamic>>(s3DataSource, (value) => value.toMap()),
    };
  }

  factory AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputDataSource.fromMap(Map<String, dynamic> map) {
    return AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputDataSource(
      s3DataSource: pulumi.Input.fromValue(AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInputDataSourceS3DataSource.fromMap((map['s3DataSource']! as Map).cast<String, dynamic>())),
    );
  }
}
