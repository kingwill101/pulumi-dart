// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_definition_parameter_object.dart';
import 'pipeline_definition_parameter_value.dart';
import 'pipeline_definition_pipeline_object.dart';

/// Input properties used for looking up and filtering PipelineDefinition resources.
class PipelineDefinitionState {
  /// Configuration block for the parameter objects used in the pipeline definition. See below
  final pulumi.Input<List<PipelineDefinitionParameterObject>>? parameterObjects;

  /// Configuration block for the parameter values used in the pipeline definition. See below
  final pulumi.Input<List<PipelineDefinitionParameterValue>>? parameterValues;

  /// ID of the pipeline.
  final pulumi.Input<String>? pipelineId;

  /// Configuration block for the objects that define the pipeline. See below
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<PipelineDefinitionPipelineObject>>? pipelineObjects;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [PipelineDefinitionState].
  /// [parameterObjects] Configuration block for the parameter objects used in the pipeline definition. See below
  /// [parameterValues] Configuration block for the parameter values used in the pipeline definition. See below
  /// [pipelineId] ID of the pipeline.
  /// [pipelineObjects] Configuration block for the objects that define the pipeline. See below
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  PipelineDefinitionState({
    this.parameterObjects,
    this.parameterValues,
    this.pipelineId,
    this.pipelineObjects,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterObjects':
          ?pulumi.Input.mapOptionalInputValue<
            List<PipelineDefinitionParameterObject>,
            List<Map<String, dynamic>>
          >(
            parameterObjects,
            (value) =>
                pulumi.Input.encodeList<
                  PipelineDefinitionParameterObject,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'parameterValues':
          ?pulumi.Input.mapOptionalInputValue<
            List<PipelineDefinitionParameterValue>,
            List<Map<String, dynamic>>
          >(
            parameterValues,
            (value) =>
                pulumi.Input.encodeList<
                  PipelineDefinitionParameterValue,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'pipelineId': ?pipelineId,
      'pipelineObjects':
          ?pulumi.Input.mapOptionalInputValue<
            List<PipelineDefinitionPipelineObject>,
            List<Map<String, dynamic>>
          >(
            pipelineObjects,
            (value) =>
                pulumi.Input.encodeList<
                  PipelineDefinitionPipelineObject,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'region': ?region,
    };
  }

  factory PipelineDefinitionState.fromMap(Map<String, dynamic> map) {
    return PipelineDefinitionState(
      parameterObjects: (() {
        final guardedValue = map['parameterObjects'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PipelineDefinitionParameterObject>(
            guardedValue,
            (value) => PipelineDefinitionParameterObject.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      parameterValues: (() {
        final guardedValue = map['parameterValues'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PipelineDefinitionParameterValue>(
            guardedValue,
            (value) => PipelineDefinitionParameterValue.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      pipelineId: (() {
        final guardedValue = map['pipelineId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pipelineObjects: (() {
        final guardedValue = map['pipelineObjects'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PipelineDefinitionPipelineObject>(
            guardedValue,
            (value) => PipelineDefinitionPipelineObject.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
