// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'algorithm_validation_specification_validation_profiles_training_job_definition_input_data_config_data_source_file_system_data_source.dart';
import 'algorithm_validation_specification_validation_profiles_training_job_definition_input_data_config_data_source_s3_data_source.dart';

class AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSource {
  /// File system-backed data source. See File System Data Source.
  final pulumi.Input<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceFileSystemDataSource>? fileSystemDataSource;
  /// S3-backed training data source. See Training S3 Data Source.
  final pulumi.Input<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSource>? s3DataSource;

  /// Creates a new [AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSource].
  /// [fileSystemDataSource] File system-backed data source. See File System Data Source.
  /// [s3DataSource] S3-backed training data source. See Training S3 Data Source.
  const AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSource({
    this.fileSystemDataSource,
    this.s3DataSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemDataSource': ?pulumi.Input.mapOptionalInputValue<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceFileSystemDataSource, Map<String, dynamic>>(fileSystemDataSource, (value) => value.toMap()),
      's3DataSource': ?pulumi.Input.mapOptionalInputValue<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSource, Map<String, dynamic>>(s3DataSource, (value) => value.toMap()),
    };
  }

  factory AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSource.fromMap(Map<String, dynamic> map) {
    return AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSource(
      fileSystemDataSource: (() { final guardedValue = map['fileSystemDataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceFileSystemDataSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3DataSource: (() { final guardedValue = map['s3DataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
