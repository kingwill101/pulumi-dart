// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'labeling_job_input_config_data_source_s3_data_source.dart';
import 'labeling_job_input_config_data_source_sns_data_source.dart';

class LabelingJobInputConfigDataSource {
  /// S3 location of the input data objects.. Fields are documented below.
  final pulumi.Input<LabelingJobInputConfigDataSourceS3DataSource>? s3DataSource;
  /// SNS data source used for streaming labeling jobs. Fields are documented below.
  final pulumi.Input<LabelingJobInputConfigDataSourceSnsDataSource>? snsDataSource;

  /// Creates a new [LabelingJobInputConfigDataSource].
  /// [s3DataSource] S3 location of the input data objects.. Fields are documented below.
  /// [snsDataSource] SNS data source used for streaming labeling jobs. Fields are documented below.
  const LabelingJobInputConfigDataSource({
    this.s3DataSource,
    this.snsDataSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3DataSource': ?pulumi.Input.mapOptionalInputValue<LabelingJobInputConfigDataSourceS3DataSource, Map<String, dynamic>>(s3DataSource, (value) => value.toMap()),
      'snsDataSource': ?pulumi.Input.mapOptionalInputValue<LabelingJobInputConfigDataSourceSnsDataSource, Map<String, dynamic>>(snsDataSource, (value) => value.toMap()),
    };
  }

  factory LabelingJobInputConfigDataSource.fromMap(Map<String, dynamic> map) {
    return LabelingJobInputConfigDataSource(
      s3DataSource: (() { final guardedValue = map['s3DataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelingJobInputConfigDataSourceS3DataSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snsDataSource: (() { final guardedValue = map['snsDataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelingJobInputConfigDataSourceSnsDataSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
