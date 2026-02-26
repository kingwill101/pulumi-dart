// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../schedule_target_sagemaker_pipeline_parameters_pipeline_parameter/schedule_target_sagemaker_pipeline_parameters_pipeline_parameter.dart';

class ScheduleTargetSagemakerPipelineParameters {
  /// Set of up to 200 parameter names and values to use when executing the SageMaker AI Model Building Pipeline. Detailed below.
  final List<ScheduleTargetSagemakerPipelineParametersPipelineParameter>?
      pipelineParameters;

  ScheduleTargetSagemakerPipelineParameters({
    this.pipelineParameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pipelineParametersValue = pipelineParameters;
    if (pipelineParametersValue != null) {
      map['pipelineParameters'] = Input.encodeList<
              ScheduleTargetSagemakerPipelineParametersPipelineParameter,
              Map<String, dynamic>>(
          pipelineParametersValue, (value) => value.toMap());
    }
    return map;
  }

  factory ScheduleTargetSagemakerPipelineParameters.fromMap(
      Map<String, dynamic> map) {
    return ScheduleTargetSagemakerPipelineParameters(
      pipelineParameters: map['pipelineParameters'] == null
          ? null
          : Input.decodeList<
                  ScheduleTargetSagemakerPipelineParametersPipelineParameter>(
              map['pipelineParameters'],
              (value) =>
                  ScheduleTargetSagemakerPipelineParametersPipelineParameter
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
