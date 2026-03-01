// ignore_for_file: unused_element, unnecessary_cast

import 'data_quality_job_definition_data_quality_job_input_batch_transform_input.dart';
import 'data_quality_job_definition_data_quality_job_input_endpoint_input.dart';

class DataQualityJobDefinitionDataQualityJobInput {
  /// Input object for the batch transform job. Fields are documented below.
  final DataQualityJobDefinitionDataQualityJobInputBatchTransformInput? batchTransformInput;
  /// Input object for the endpoint. Fields are documented below.
  final DataQualityJobDefinitionDataQualityJobInputEndpointInput? endpointInput;

  /// Creates a new [DataQualityJobDefinitionDataQualityJobInput].
  /// [batchTransformInput] Input object for the batch transform job. Fields are documented below.
  /// [endpointInput] Input object for the endpoint. Fields are documented below.
  DataQualityJobDefinitionDataQualityJobInput({
    this.batchTransformInput,
    this.endpointInput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchTransformInput': ?batchTransformInput == null ? null : batchTransformInput!.toMap(),
      'endpointInput': ?endpointInput == null ? null : endpointInput!.toMap(),
    };
  }

  factory DataQualityJobDefinitionDataQualityJobInput.fromMap(Map<String, dynamic> map) {
    return DataQualityJobDefinitionDataQualityJobInput(
      batchTransformInput: map['batchTransformInput'] == null ? null : DataQualityJobDefinitionDataQualityJobInputBatchTransformInput.fromMap((map['batchTransformInput'] as Map).cast<String, dynamic>()),
      endpointInput: map['endpointInput'] == null ? null : DataQualityJobDefinitionDataQualityJobInputEndpointInput.fromMap((map['endpointInput'] as Map).cast<String, dynamic>()),
    );
  }
}

