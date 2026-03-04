// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_target_sagemaker_pipeline_parameters_pipeline_parameter.dart';

class ScheduleTargetSagemakerPipelineParameters {
  /// Set of up to 200 parameter names and values to use when executing the SageMaker AI Model Building Pipeline. Detailed below.
  final pulumi.Input<
    List<ScheduleTargetSagemakerPipelineParametersPipelineParameter>
  >?
  pipelineParameters;

  /// Creates a new [ScheduleTargetSagemakerPipelineParameters].
  /// [pipelineParameters] Set of up to 200 parameter names and values to use when executing the SageMaker AI Model Building Pipeline. Detailed below.
  ScheduleTargetSagemakerPipelineParameters({this.pipelineParameters});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pipelineParameters':
          ?pulumi.Input.mapOptionalInputValue<
            List<ScheduleTargetSagemakerPipelineParametersPipelineParameter>,
            List<Map<String, dynamic>>
          >(
            pipelineParameters,
            (value) =>
                pulumi.Input.encodeList<
                  ScheduleTargetSagemakerPipelineParametersPipelineParameter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ScheduleTargetSagemakerPipelineParameters.fromMap(
    Map<String, dynamic> map,
  ) {
    return ScheduleTargetSagemakerPipelineParameters(
      pipelineParameters: (() {
        final guardedValue = map['pipelineParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ScheduleTargetSagemakerPipelineParametersPipelineParameter
          >(
            guardedValue,
            (value) =>
                ScheduleTargetSagemakerPipelineParametersPipelineParameter.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
