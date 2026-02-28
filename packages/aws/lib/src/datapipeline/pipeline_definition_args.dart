// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_definition_parameter_object.dart';
import 'pipeline_definition_parameter_value.dart';
import 'pipeline_definition_pipeline_object.dart';

/// {@template pulumi_datapipeline_pipeline_definition_pipeline_definition_args_doc}
/// The set of arguments for PipelineDefinition.
/// {@endtemplate}
/// {@macro pulumi_datapipeline_pipeline_definition_pipeline_definition_args_doc}
class PipelineDefinitionArgs {
  /// Configuration block for the parameter objects used in the pipeline definition. See below
  final pulumi.Input<List<PipelineDefinitionParameterObject>>? parameterObjects;

  /// Configuration block for the parameter values used in the pipeline definition. See below
  final pulumi.Input<List<PipelineDefinitionParameterValue>>? parameterValues;

  /// ID of the pipeline.
  final pulumi.Input<String> pipelineId;

  /// Configuration block for the objects that define the pipeline. See below
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<PipelineDefinitionPipelineObject>> pipelineObjects;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [PipelineDefinitionArgs].
  /// [parameterObjects] Configuration block for the parameter objects used in the pipeline definition. See below
  /// [parameterValues] Configuration block for the parameter values used in the pipeline definition. See below
  /// [pipelineId] ID of the pipeline.
  /// [pipelineObjects] Configuration block for the objects that define the pipeline. See below
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  PipelineDefinitionArgs({
    List<PipelineDefinitionParameterObject>? parameterObjects,
    List<PipelineDefinitionParameterValue>? parameterValues,
    required String pipelineId,
    required List<PipelineDefinitionPipelineObject> pipelineObjects,
    String? region,
  })  : parameterObjects = pulumi.Input.asOptionalInput<
            List<PipelineDefinitionParameterObject>>(parameterObjects),
        parameterValues = pulumi.Input.asOptionalInput<
            List<PipelineDefinitionParameterValue>>(parameterValues),
        pipelineId = pulumi.Input.asInput<String>(pipelineId),
        pipelineObjects =
            pulumi.Input.asInput<List<PipelineDefinitionPipelineObject>>(
                pipelineObjects),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final parameterObjectsValue = parameterObjects;
    if (parameterObjectsValue != null) {
      map['parameterObjects'] = pulumi.Input.mapOptionalInputValue<
              List<PipelineDefinitionParameterObject>,
              List<Map<String, dynamic>>>(
          parameterObjectsValue,
          (value) => pulumi.Input.encodeList<PipelineDefinitionParameterObject,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final parameterValuesValue = parameterValues;
    if (parameterValuesValue != null) {
      map['parameterValues'] = pulumi.Input.mapOptionalInputValue<
              List<PipelineDefinitionParameterValue>,
              List<Map<String, dynamic>>>(
          parameterValuesValue,
          (value) => pulumi.Input.encodeList<PipelineDefinitionParameterValue,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['pipelineId'] = pipelineId;
    map['pipelineObjects'] = pulumi.Input.mapInputValue<
            List<PipelineDefinitionPipelineObject>, List<Map<String, dynamic>>>(
        pipelineObjects,
        (value) => pulumi.Input.encodeList<PipelineDefinitionPipelineObject,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory PipelineDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return PipelineDefinitionArgs(
      parameterObjects: map['parameterObjects'] == null
          ? null
          : pulumi.Input.decodeList<PipelineDefinitionParameterObject>(
              map['parameterObjects'],
              (value) => PipelineDefinitionParameterObject.fromMap(
                  (value as Map).cast<String, dynamic>())),
      parameterValues: map['parameterValues'] == null
          ? null
          : pulumi.Input.decodeList<PipelineDefinitionParameterValue>(
              map['parameterValues'],
              (value) => PipelineDefinitionParameterValue.fromMap(
                  (value as Map).cast<String, dynamic>())),
      pipelineId: map['pipelineId'] as String,
      pipelineObjects:
          pulumi.Input.decodeList<PipelineDefinitionPipelineObject>(
              map['pipelineObjects'],
              (value) => PipelineDefinitionPipelineObject.fromMap(
                  (value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
