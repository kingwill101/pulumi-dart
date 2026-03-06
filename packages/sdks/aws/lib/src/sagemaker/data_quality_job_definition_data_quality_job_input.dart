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
  const DataQualityJobDefinitionDataQualityJobInput({
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
      batchTransformInput: (() { final guardedValue = map['batchTransformInput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataQualityJobDefinitionDataQualityJobInputBatchTransformInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpointInput: (() { final guardedValue = map['endpointInput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataQualityJobDefinitionDataQualityJobInputEndpointInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

