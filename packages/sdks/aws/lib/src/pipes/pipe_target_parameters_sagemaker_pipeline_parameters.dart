// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipe_target_parameters_sagemaker_pipeline_parameters_pipeline_parameter.dart';

class PipeTargetParametersSagemakerPipelineParameters {
  /// List of Parameter names and values for SageMaker AI Model Building Pipeline execution. Detailed below.
  final pulumi.Input<List<PipeTargetParametersSagemakerPipelineParametersPipelineParameter>?>? pipelineParameters;

  /// Creates a new [PipeTargetParametersSagemakerPipelineParameters].
  /// [pipelineParameters] List of Parameter names and values for SageMaker AI Model Building Pipeline execution. Detailed below.
  const PipeTargetParametersSagemakerPipelineParameters({
    this.pipelineParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pipelineParameters': ?pulumi.Input.mapOptionalInputValue<List<PipeTargetParametersSagemakerPipelineParametersPipelineParameter>, List<Map<String, dynamic>>>(pipelineParameters, (value) => pulumi.Input.encodeList<PipeTargetParametersSagemakerPipelineParametersPipelineParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PipeTargetParametersSagemakerPipelineParameters.fromMap(Map<String, dynamic> map) {
    return PipeTargetParametersSagemakerPipelineParameters(
      pipelineParameters: (() { final guardedValue = map['pipelineParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PipeTargetParametersSagemakerPipelineParametersPipelineParameter>(guardedValue, (value) => PipeTargetParametersSagemakerPipelineParametersPipelineParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
