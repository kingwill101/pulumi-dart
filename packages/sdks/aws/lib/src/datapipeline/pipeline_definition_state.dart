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
    pulumi.Output<List<PipelineDefinitionParameterObject>>? parameterObjects,
    pulumi.Output<List<PipelineDefinitionParameterValue>>? parameterValues,
    pulumi.Output<String>? pipelineId,
    pulumi.Output<List<PipelineDefinitionPipelineObject>>? pipelineObjects,
    pulumi.Output<String>? region,
  }) :
      parameterObjects = pulumi.Input.asOptionalInput<List<PipelineDefinitionParameterObject>>(parameterObjects),
      parameterValues = pulumi.Input.asOptionalInput<List<PipelineDefinitionParameterValue>>(parameterValues),
      pipelineId = pulumi.Input.asOptionalInput<String>(pipelineId),
      pipelineObjects = pulumi.Input.asOptionalInput<List<PipelineDefinitionPipelineObject>>(pipelineObjects),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterObjects': ?pulumi.Input.mapOptionalInputValue<List<PipelineDefinitionParameterObject>, List<Map<String, dynamic>>>(parameterObjects, (value) => pulumi.Input.encodeList<PipelineDefinitionParameterObject, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parameterValues': ?pulumi.Input.mapOptionalInputValue<List<PipelineDefinitionParameterValue>, List<Map<String, dynamic>>>(parameterValues, (value) => pulumi.Input.encodeList<PipelineDefinitionParameterValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pipelineId': ?pipelineId,
      'pipelineObjects': ?pulumi.Input.mapOptionalInputValue<List<PipelineDefinitionPipelineObject>, List<Map<String, dynamic>>>(pipelineObjects, (value) => pulumi.Input.encodeList<PipelineDefinitionPipelineObject, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory PipelineDefinitionState.fromMap(Map<String, dynamic> map) {
    return PipelineDefinitionState(
      parameterObjects: map['parameterObjects'] == null ? null : pulumi.Output.create<List<PipelineDefinitionParameterObject>>(pulumi.Input.decodeList<PipelineDefinitionParameterObject>(map['parameterObjects'], (value) => PipelineDefinitionParameterObject.fromMap((value as Map).cast<String, dynamic>()))),
      parameterValues: map['parameterValues'] == null ? null : pulumi.Output.create<List<PipelineDefinitionParameterValue>>(pulumi.Input.decodeList<PipelineDefinitionParameterValue>(map['parameterValues'], (value) => PipelineDefinitionParameterValue.fromMap((value as Map).cast<String, dynamic>()))),
      pipelineId: map['pipelineId'] == null ? null : pulumi.Output.create<String>(map['pipelineId'] as String),
      pipelineObjects: map['pipelineObjects'] == null ? null : pulumi.Output.create<List<PipelineDefinitionPipelineObject>>(pulumi.Input.decodeList<PipelineDefinitionPipelineObject>(map['pipelineObjects'], (value) => PipelineDefinitionPipelineObject.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

