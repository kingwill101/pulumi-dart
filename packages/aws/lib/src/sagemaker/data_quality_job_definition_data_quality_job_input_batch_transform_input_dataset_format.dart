// ignore_for_file: unused_element, unnecessary_cast

import 'data_quality_job_definition_data_quality_job_input_batch_transform_input_dataset_format_csv.dart';
import 'data_quality_job_definition_data_quality_job_input_batch_transform_input_dataset_format_json.dart';

class DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormat {
  /// The CSV dataset used in the monitoring job. Fields are documented below.
  final DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatCsv?
      csv;

  /// The JSON dataset used in the monitoring job. Fields are documented below.
  final DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatJson?
      json;

  /// Creates a new [DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormat].
  /// [csv] The CSV dataset used in the monitoring job. Fields are documented below.
  /// [json] The JSON dataset used in the monitoring job. Fields are documented below.
  DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormat({
    this.csv,
    this.json,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final csvValue = csv;
    if (csvValue != null) {
      map['csv'] = csvValue.toMap();
    }
    final jsonValue = json;
    if (jsonValue != null) {
      map['json'] = jsonValue.toMap();
    }
    return map;
  }

  factory DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormat.fromMap(
      Map<String, dynamic> map) {
    return DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormat(
      csv: map['csv'] == null
          ? null
          : DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatCsv
              .fromMap((map['csv'] as Map).cast<String, dynamic>()),
      json: map['json'] == null
          ? null
          : DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatJson
              .fromMap((map['json'] as Map).cast<String, dynamic>()),
    );
  }
}
