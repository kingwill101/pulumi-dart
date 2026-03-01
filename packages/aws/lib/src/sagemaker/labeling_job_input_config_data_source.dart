// ignore_for_file: unused_element, unnecessary_cast

import 'labeling_job_input_config_data_source_s3_data_source.dart';
import 'labeling_job_input_config_data_source_sns_data_source.dart';

class LabelingJobInputConfigDataSource {
  /// S3 location of the input data objects.. Fields are documented below.
  final LabelingJobInputConfigDataSourceS3DataSource? s3DataSource;

  /// SNS data source used for streaming labeling jobs. Fields are documented below.
  final LabelingJobInputConfigDataSourceSnsDataSource? snsDataSource;

  /// Creates a new [LabelingJobInputConfigDataSource].
  /// [s3DataSource] S3 location of the input data objects.. Fields are documented below.
  /// [snsDataSource] SNS data source used for streaming labeling jobs. Fields are documented below.
  LabelingJobInputConfigDataSource({this.s3DataSource, this.snsDataSource});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3DataSource': ?s3DataSource == null ? null : s3DataSource!.toMap(),
      'snsDataSource': ?snsDataSource == null ? null : snsDataSource!.toMap(),
    };
  }

  factory LabelingJobInputConfigDataSource.fromMap(Map<String, dynamic> map) {
    return LabelingJobInputConfigDataSource(
      s3DataSource: map['s3DataSource'] == null
          ? null
          : LabelingJobInputConfigDataSourceS3DataSource.fromMap(
              (map['s3DataSource'] as Map).cast<String, dynamic>(),
            ),
      snsDataSource: map['snsDataSource'] == null
          ? null
          : LabelingJobInputConfigDataSourceSnsDataSource.fromMap(
              (map['snsDataSource'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
