// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_parameter_tuning_job_training_job_definition_input_data_config_data_source_file_system_data_source.dart';
import 'hyper_parameter_tuning_job_training_job_definition_input_data_config_data_source_s3_data_source.dart';

class HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSource {
  /// File system source settings. See `fileSystemDataSource`.
  final pulumi.Input<HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceFileSystemDataSource>? fileSystemDataSource;
  /// S3 source settings. See `s3DataSource`.
  final pulumi.Input<HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSource>? s3DataSource;

  /// Creates a new [HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSource].
  /// [fileSystemDataSource] File system source settings. See `fileSystemDataSource`.
  /// [s3DataSource] S3 source settings. See `s3DataSource`.
  const HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSource({
    this.fileSystemDataSource,
    this.s3DataSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemDataSource': ?pulumi.Input.mapOptionalInputValue<HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceFileSystemDataSource, Map<String, dynamic>>(fileSystemDataSource, (value) => value.toMap()),
      's3DataSource': ?pulumi.Input.mapOptionalInputValue<HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSource, Map<String, dynamic>>(s3DataSource, (value) => value.toMap()),
    };
  }

  factory HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSource.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSource(
      fileSystemDataSource: (() { final guardedValue = map['fileSystemDataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceFileSystemDataSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3DataSource: (() { final guardedValue = map['s3DataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
