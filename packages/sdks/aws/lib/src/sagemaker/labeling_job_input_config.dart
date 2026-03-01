// ignore_for_file: unused_element, unnecessary_cast

import 'labeling_job_input_config_data_attributes.dart';
import 'labeling_job_input_config_data_source.dart';

class LabelingJobInputConfig {
  /// Attributes of the data. Fields are documented below.
  final LabelingJobInputConfigDataAttributes? dataAttributes;
  /// Location of the input data.. Fields are documented below.
  final LabelingJobInputConfigDataSource dataSource;

  /// Creates a new [LabelingJobInputConfig].
  /// [dataAttributes] Attributes of the data. Fields are documented below.
  /// [dataSource] Location of the input data.. Fields are documented below.
  LabelingJobInputConfig({
    this.dataAttributes,
    required this.dataSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataAttributes': ?dataAttributes == null ? null : dataAttributes!.toMap(),
      'dataSource': dataSource.toMap(),
    };
  }

  factory LabelingJobInputConfig.fromMap(Map<String, dynamic> map) {
    return LabelingJobInputConfig(
      dataAttributes: map['dataAttributes'] == null ? null : LabelingJobInputConfigDataAttributes.fromMap((map['dataAttributes'] as Map).cast<String, dynamic>()),
      dataSource: LabelingJobInputConfigDataSource.fromMap((map['dataSource'] as Map).cast<String, dynamic>()),
    );
  }
}

