// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../pipe_target_parameters_sagemaker_pipeline_parameters_pipeline_parameter/pipe_target_parameters_sagemaker_pipeline_parameters_pipeline_parameter.dart';

class PipeTargetParametersSagemakerPipelineParameters {
  /// List of Parameter names and values for SageMaker AI Model Building Pipeline execution. Detailed below.
  final List<PipeTargetParametersSagemakerPipelineParametersPipelineParameter>?
      pipelineParameters;

  PipeTargetParametersSagemakerPipelineParameters({
    this.pipelineParameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pipelineParametersValue = pipelineParameters;
    if (pipelineParametersValue != null) {
      map['pipelineParameters'] = Input.encodeList<
              PipeTargetParametersSagemakerPipelineParametersPipelineParameter,
              Map<String, dynamic>>(
          pipelineParametersValue, (value) => value.toMap());
    }
    return map;
  }

  factory PipeTargetParametersSagemakerPipelineParameters.fromMap(
      Map<String, dynamic> map) {
    return PipeTargetParametersSagemakerPipelineParameters(
      pipelineParameters: map['pipelineParameters'] == null
          ? null
          : Input.decodeList<
                  PipeTargetParametersSagemakerPipelineParametersPipelineParameter>(
              map['pipelineParameters'],
              (value) =>
                  PipeTargetParametersSagemakerPipelineParametersPipelineParameter
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
