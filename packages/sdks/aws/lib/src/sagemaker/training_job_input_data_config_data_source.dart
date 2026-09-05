// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'training_job_input_data_config_data_source_file_system_data_source.dart';
import 'training_job_input_data_config_data_source_s3_data_source.dart';

class TrainingJobInputDataConfigDataSource {
  /// File system data source. See `fileSystemDataSource` below.
  final pulumi.Input<TrainingJobInputDataConfigDataSourceFileSystemDataSource?>? fileSystemDataSource;
  /// S3 data source. See `s3DataSource` below.
  final pulumi.Input<TrainingJobInputDataConfigDataSourceS3DataSource?>? s3DataSource;

  /// Creates a new [TrainingJobInputDataConfigDataSource].
  /// [fileSystemDataSource] File system data source. See `fileSystemDataSource` below.
  /// [s3DataSource] S3 data source. See `s3DataSource` below.
  const TrainingJobInputDataConfigDataSource({
    this.fileSystemDataSource,
    this.s3DataSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemDataSource': ?pulumi.Input.mapOptionalInputValue<TrainingJobInputDataConfigDataSourceFileSystemDataSource, Map<String, dynamic>>(fileSystemDataSource, (value) => value.toMap()),
      's3DataSource': ?pulumi.Input.mapOptionalInputValue<TrainingJobInputDataConfigDataSourceS3DataSource, Map<String, dynamic>>(s3DataSource, (value) => value.toMap()),
    };
  }

  factory TrainingJobInputDataConfigDataSource.fromMap(Map<String, dynamic> map) {
    return TrainingJobInputDataConfigDataSource(
      fileSystemDataSource: (() { final guardedValue = map['fileSystemDataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrainingJobInputDataConfigDataSourceFileSystemDataSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3DataSource: (() { final guardedValue = map['s3DataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrainingJobInputDataConfigDataSourceS3DataSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
