// ignore_for_file: unused_element, unnecessary_cast

import '../labeling_job_input_config_data_attributes/labeling_job_input_config_data_attributes.dart';
import '../labeling_job_input_config_data_source/labeling_job_input_config_data_source.dart';

class LabelingJobInputConfig {
  /// Attributes of the data. Fields are documented below.
  final LabelingJobInputConfigDataAttributes? dataAttributes;

  /// Location of the input data.. Fields are documented below.
  final LabelingJobInputConfigDataSource dataSource;

  LabelingJobInputConfig({
    this.dataAttributes,
    required this.dataSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataAttributesValue = dataAttributes;
    if (dataAttributesValue != null) {
      map['dataAttributes'] = dataAttributesValue.toMap();
    }
    map['dataSource'] = dataSource.toMap();
    return map;
  }

  factory LabelingJobInputConfig.fromMap(Map<String, dynamic> map) {
    return LabelingJobInputConfig(
      dataAttributes: map['dataAttributes'] == null
          ? null
          : LabelingJobInputConfigDataAttributes.fromMap(
              (map['dataAttributes'] as Map).cast<String, dynamic>()),
      dataSource: LabelingJobInputConfigDataSource.fromMap(
          (map['dataSource'] as Map).cast<String, dynamic>()),
    );
  }
}
