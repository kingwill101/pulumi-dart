// ignore_for_file: unused_element, unnecessary_cast

import '../data_quality_job_definition_data_quality_job_input_batch_transform_input/data_quality_job_definition_data_quality_job_input_batch_transform_input.dart';
import '../data_quality_job_definition_data_quality_job_input_endpoint_input/data_quality_job_definition_data_quality_job_input_endpoint_input.dart';

class DataQualityJobDefinitionDataQualityJobInput {
  /// Input object for the batch transform job. Fields are documented below.
  final DataQualityJobDefinitionDataQualityJobInputBatchTransformInput?
      batchTransformInput;

  /// Input object for the endpoint. Fields are documented below.
  final DataQualityJobDefinitionDataQualityJobInputEndpointInput? endpointInput;

  DataQualityJobDefinitionDataQualityJobInput({
    this.batchTransformInput,
    this.endpointInput,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final batchTransformInputValue = batchTransformInput;
    if (batchTransformInputValue != null) {
      map['batchTransformInput'] = batchTransformInputValue.toMap();
    }
    final endpointInputValue = endpointInput;
    if (endpointInputValue != null) {
      map['endpointInput'] = endpointInputValue.toMap();
    }
    return map;
  }

  factory DataQualityJobDefinitionDataQualityJobInput.fromMap(
      Map<String, dynamic> map) {
    return DataQualityJobDefinitionDataQualityJobInput(
      batchTransformInput: map['batchTransformInput'] == null
          ? null
          : DataQualityJobDefinitionDataQualityJobInputBatchTransformInput
              .fromMap(
                  (map['batchTransformInput'] as Map).cast<String, dynamic>()),
      endpointInput: map['endpointInput'] == null
          ? null
          : DataQualityJobDefinitionDataQualityJobInputEndpointInput.fromMap(
              (map['endpointInput'] as Map).cast<String, dynamic>()),
    );
  }
}
