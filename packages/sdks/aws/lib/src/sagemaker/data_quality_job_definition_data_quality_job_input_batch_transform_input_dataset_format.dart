// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_quality_job_definition_data_quality_job_input_batch_transform_input_dataset_format_csv.dart';
import 'data_quality_job_definition_data_quality_job_input_batch_transform_input_dataset_format_json.dart';

class DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormat {
  /// The CSV dataset used in the monitoring job. Fields are documented below.
  final pulumi.Input<DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatCsv?>? csv;
  /// The JSON dataset used in the monitoring job. Fields are documented below.
  final pulumi.Input<DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatJson?>? json;

  /// Creates a new [DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormat].
  /// [csv] The CSV dataset used in the monitoring job. Fields are documented below.
  /// [json] The JSON dataset used in the monitoring job. Fields are documented below.
  const DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormat({
    this.csv,
    this.json,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csv': ?pulumi.Input.mapOptionalInputValue<DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatCsv, Map<String, dynamic>>(csv, (value) => value.toMap()),
      'json': ?pulumi.Input.mapOptionalInputValue<DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatJson, Map<String, dynamic>>(json, (value) => value.toMap()),
    };
  }

  factory DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormat.fromMap(Map<String, dynamic> map) {
    return DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormat(
      csv: (() { final guardedValue = map['csv']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatCsv.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      json: (() { final guardedValue = map['json']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatJson.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
