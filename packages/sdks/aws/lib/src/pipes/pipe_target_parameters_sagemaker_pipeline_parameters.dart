// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipe_target_parameters_sagemaker_pipeline_parameters_pipeline_parameter.dart';

class PipeTargetParametersSagemakerPipelineParameters {
  /// List of Parameter names and values for SageMaker AI Model Building Pipeline execution. Detailed below.
  final pulumi.Input<List<PipeTargetParametersSagemakerPipelineParametersPipelineParameter>>? pipelineParameters;

  /// Creates a new [PipeTargetParametersSagemakerPipelineParameters].
  /// [pipelineParameters] List of Parameter names and values for SageMaker AI Model Building Pipeline execution. Detailed below.
  PipeTargetParametersSagemakerPipelineParameters({
    this.pipelineParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pipelineParameters': ?pulumi.Input.mapOptionalInputValue<List<PipeTargetParametersSagemakerPipelineParametersPipelineParameter>, List<Map<String, dynamic>>>(pipelineParameters, (value) => pulumi.Input.encodeList<PipeTargetParametersSagemakerPipelineParametersPipelineParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PipeTargetParametersSagemakerPipelineParameters.fromMap(Map<String, dynamic> map) {
    return PipeTargetParametersSagemakerPipelineParameters(
      pipelineParameters: map['pipelineParameters'] == null ? null : ((pulumi.Input.decodeList<PipeTargetParametersSagemakerPipelineParametersPipelineParameter>(map['pipelineParameters']!, (value) => PipeTargetParametersSagemakerPipelineParametersPipelineParameter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

