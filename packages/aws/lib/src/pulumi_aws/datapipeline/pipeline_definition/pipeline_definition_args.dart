// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../pipeline_definition_parameter_object/pipeline_definition_parameter_object.dart';
import '../pipeline_definition_parameter_value/pipeline_definition_parameter_value.dart';
import '../pipeline_definition_pipeline_object/pipeline_definition_pipeline_object.dart';

/// The set of arguments for PipelineDefinition.
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

  PipelineDefinitionArgs({
    this.parameterObjects,
    this.parameterValues,
    required this.pipelineId,
    required this.pipelineObjects,
    this.region,
  });

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
      parameterObjects:
          pulumi.Input.asOptionalInput<List<PipelineDefinitionParameterObject>>(
              map['parameterObjects']),
      parameterValues:
          pulumi.Input.asOptionalInput<List<PipelineDefinitionParameterValue>>(
              map['parameterValues']),
      pipelineId: pulumi.Input.asInput<String>(map['pipelineId']),
      pipelineObjects:
          pulumi.Input.asInput<List<PipelineDefinitionPipelineObject>>(
              map['pipelineObjects']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
