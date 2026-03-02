// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_quality_job_definition_data_quality_job_input_batch_transform_input.dart';
import 'data_quality_job_definition_data_quality_job_input_endpoint_input.dart';

class DataQualityJobDefinitionDataQualityJobInput {
  /// Input object for the batch transform job. Fields are documented below.
  final pulumi.Input<DataQualityJobDefinitionDataQualityJobInputBatchTransformInput>? batchTransformInput;
  /// Input object for the endpoint. Fields are documented below.
  final pulumi.Input<DataQualityJobDefinitionDataQualityJobInputEndpointInput>? endpointInput;

  /// Creates a new [DataQualityJobDefinitionDataQualityJobInput].
  /// [batchTransformInput] Input object for the batch transform job. Fields are documented below.
  /// [endpointInput] Input object for the endpoint. Fields are documented below.
  DataQualityJobDefinitionDataQualityJobInput({
    this.batchTransformInput,
    this.endpointInput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchTransformInput': ?pulumi.Input.mapOptionalInputValue<DataQualityJobDefinitionDataQualityJobInputBatchTransformInput, Map<String, dynamic>>(batchTransformInput, (value) => value.toMap()),
      'endpointInput': ?pulumi.Input.mapOptionalInputValue<DataQualityJobDefinitionDataQualityJobInputEndpointInput, Map<String, dynamic>>(endpointInput, (value) => value.toMap()),
    };
  }

  factory DataQualityJobDefinitionDataQualityJobInput.fromMap(Map<String, dynamic> map) {
    return DataQualityJobDefinitionDataQualityJobInput(
      batchTransformInput: map['batchTransformInput'] == null ? null : ((DataQualityJobDefinitionDataQualityJobInputBatchTransformInput.fromMap((map['batchTransformInput']! as Map).cast<String, dynamic>())).input()).input(),
      endpointInput: map['endpointInput'] == null ? null : ((DataQualityJobDefinitionDataQualityJobInputEndpointInput.fromMap((map['endpointInput']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

